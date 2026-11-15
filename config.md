# Make Instagram — Project Configuration

## 1. Purpose

This file is the configuration index for the Make Instagram repository. It identifies the approved content categories, shared prompt framework, and the canonical documents that define each part of the workflow.

Detailed rules must live in their designated source documents. Do not maintain duplicate category-specific prompt instructions in this file.

## 2. Project Scope

- Project: Instagram content workflow for Apple Store Malaysia.
- Primary channel: Instagram.
- Content planning and creative prompt preparation are separate from publishing automation.
- Image and caption assets are prepared by the separate content creation application; Make.com handles the configured publishing workflow.
- Supabase is the project's data store for the existing publishing workflow.

## 3. Approved Content Categories

The project uses these seven categories. Preserve their names and content directions.

| Category | Content Direction | AI Agent Focus |
| --- | --- | --- |
| Product | iPhone, iPad, Mac, Apple Watch | Product showcase |
| Promotion | Discounts, offers, campaigns | Promotional content |
| Lifestyle | Apple ecosystem lifestyle | Lifestyle storytelling |
| Education | Product features and tutorials | Educational content |
| News | Apple announcements and updates | News & updates |
| Comparison | Product comparisons | Product analysis |
| Tips | Tips, tricks and recommendations | Helpful content |

**Source of truth:** `instagram_content_categories.md`.

## 4. Shared Image Prompt Framework

Image Generation Prompts use these nine shared elements:

1. Subject & Product
2. Action & Environment
3. Composition
4. Visual Style
5. Lighting
6. Camera & Quality
7. Color & Mood
8. Text & Branding
9. Negative Constraints

The elements are internal prompt-building components. They are not nine separate user-facing workflow steps.

Each category assigns a priority to the elements:

- **Primary:** provide explicit, detailed direction.
- **Secondary:** include when relevant to support the concept.
- **Optional:** include only when required by the brief.
- **Always enforced:** apply regardless of category.

All nine elements remain available to the AI Agent. Priority determines emphasis, not whether an element is categorically excluded.

**Source of truth for the category-by-category mapping, instructions, accuracy rules, and prompt assembly:** `instagram_image_prompt_config.md`.

Do not copy or independently redefine its priority matrix in this file. If a priority or category instruction needs to change, update the canonical image prompt configuration and then check references to it.

## 5. AI Agent and Brand Direction

The AI Agent must follow `ai-agent.md` for:

- Agent identity, mission, and brand context.
- Instagram content strategy and workflow responsibilities.
- Language and communication direction.
- Product, promotion, and factual accuracy requirements.
- Research, brand safety, review, and approval rules.
- Publishing and scheduling context.

The AI Agent must not invent product specifications, features, prices, discounts, availability, release dates, news, or endorsements. Missing or conflicting factual information must be flagged for confirmation.

## 6. Data and Publishing Configuration

The current Supabase table definitions are documented in `supabase/table.md`.

The scheduled queue-transfer configuration is documented in `supabase/make_webhook_cron.sql`.

Preserve the existing database contracts and names. This configuration index does not authorize changes to database schemas, cron schedules, Make.com scenarios, or Instagram publishing behavior.

## 7. Configuration Ownership

| Concern | Canonical document |
| --- | --- |
| Project configuration index and document ownership | `config.md` |
| AI Agent role, brand, strategy, workflow, and operating rules | `ai-agent.md` |
| Approved content categories and content directions | `instagram_content_categories.md` |
| Image prompt elements, category priorities, accuracy rules, and prompt assembly | `instagram_image_prompt_config.md` |
| Supabase table definitions | `supabase/table.md` |
| Supabase cron configuration | `supabase/make_webhook_cron.sql` |

## 8. Change Management

1. Identify the canonical document for the requirement being changed.
2. Update that document rather than creating a conflicting duplicate.
3. Check dependent documents for outdated references.
4. Preserve approved category names, table names, column names, function names, and workflow contracts.
5. Mark unresolved decisions for confirmation; do not silently convert proposals into requirements.
6. Keep documentation changes within the scope explicitly requested by the user.

