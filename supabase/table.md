# Supabase Tables

This document defines the SQL table schemas used by the Make Instagram project.

## `public.make_post`

```sql
create table public.make_post (
  id uuid not null default gen_random_uuid (),
  image_url text null,
  caption text null,
  constraint make_post_pkey primary key (id)
) TABLESPACE pg_default;
```

## `public.make_webhook`

```sql
create table public.make_webhook (
  id uuid not null default gen_random_uuid (),
  image_url text null,
  caption text null,
  date date not null,
  "time" time without time zone not null,
  constraint make_webhook_pkey primary key (id)
) TABLESPACE pg_default;
```
