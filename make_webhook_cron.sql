
-- =========================================================
-- MAKE WEBHOOK CRON AUTOMATION
-- Timezone: Asia/Kuala_Lumpur (UTC+8)
-- Requirement v8: Transfer maximum 1 row per execution
-- =========================================================

-- 1. Enable pg_cron
CREATE EXTENSION IF NOT EXISTS pg_cron
WITH SCHEMA pg_catalog;


-- 2. Create transfer function
CREATE OR REPLACE FUNCTION public.transfer_due_make_webhook()
RETURNS INTEGER
LANGUAGE plpgsql
AS $function$
DECLARE
    v_local_now TIMESTAMP WITHOUT TIME ZONE;
    v_moved INTEGER := 0;
BEGIN
    -- Prevent concurrent executions
    IF NOT pg_try_advisory_xact_lock(731204, 1) THEN
        RETURN 0;
    END IF;

    -- Current Malaysia local time
    v_local_now :=
        CLOCK_TIMESTAMP() AT TIME ZONE 'Asia/Kuala_Lumpur';

    -- Select and transfer only one overdue row
    WITH next_row AS (
        SELECT id
        FROM public.make_webhook
        WHERE (date, time) <= (
            v_local_now::date,
            v_local_now::time
        )
        ORDER BY date ASC, time ASC, id ASC
        LIMIT 1
        FOR UPDATE
    ),
    moved_row AS (
        DELETE FROM public.make_webhook AS source
        USING next_row
        WHERE source.id = next_row.id
        RETURNING source.image_url, source.caption
    )
    INSERT INTO public.make_post (
        image_url,
        caption
    )
    SELECT
        image_url,
        caption
    FROM moved_row;

    GET DIAGNOSTICS v_moved = ROW_COUNT;

    RETURN v_moved;
END;
$function$;


-- 3. Remove existing jobs with the same names
DO $$
DECLARE
    v_job RECORD;
BEGIN
    FOR v_job IN
        SELECT jobid
        FROM cron.job
        WHERE jobname IN (
            'move-make-webhook-0900',
            'move-make-webhook-1300',
            'move-make-webhook-1900',
            'move-make-webhook-every-minute'
        )
    LOOP
        PERFORM cron.unschedule(v_job.jobid);
    END LOOP;
END;
$$;


-- 4. Schedule 09:00 Malaysia time
-- Cron timezone: UTC
SELECT cron.schedule(
    'move-make-webhook-0900',
    '0 1 * * *',
    'SELECT public.transfer_due_make_webhook();'
);


-- 5. Schedule 13:00 Malaysia time
SELECT cron.schedule(
    'move-make-webhook-1300',
    '0 5 * * *',
    'SELECT public.transfer_due_make_webhook();'
);


-- 6. Schedule 19:00 Malaysia time
SELECT cron.schedule(
    'move-make-webhook-1900',
    '0 11 * * *',
    'SELECT public.transfer_due_make_webhook();'
);


-- 7. Catch-up every minute
SELECT cron.schedule(
    'move-make-webhook-every-minute',
    '* * * * *',
    'SELECT public.transfer_due_make_webhook();'
);


-- 8. Verify active cron jobs
SELECT
    jobid,
    jobname,
    schedule,
    command,
    active
FROM cron.job
WHERE jobname IN (
    'move-make-webhook-0900',
    'move-make-webhook-1300',
    'move-make-webhook-1900',
    'move-make-webhook-every-minute'
)
ORDER BY jobname;
