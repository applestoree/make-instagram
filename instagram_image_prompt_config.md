# Instagram Image Prompt Configuration

## 1. Purpose

This document defines the category-specific configuration for Image Generation Prompts used by the Instagram Apple Store Malaysia content workflow.

The nine prompt elements below form the shared framework. Every category uses the framework, but each category has different priorities and instructions.

The AI Agent must use this configuration to create a category-appropriate image prompt. The nine elements are prompt-building instructions, not nine separate user-facing workflow steps.

## 2. Global Prompt Elements

| Element | Responsibility |
| --- | --- |
| Subject & Product | Identify the main subject, exact product/model, color, material, and relevant visible details. |
| Action & Environment | Describe what the subject is doing and the setting or environment. |
| Composition | Define layout, framing, subject placement, visual hierarchy, perspective, and negative space. |
| Visual Style | Define the visual treatment, such as product photography, lifestyle editorial, commercial advertising, or educational infographic. |
| Lighting | Specify light source, direction, softness, contrast, highlights, and shadows. |
| Camera & Quality | Specify shot type, perspective, focus, detail, realism, and output quality. |
| Color & Mood | Define palette, contrast, atmosphere, and intended emotional tone. |
| Text & Branding | Define required headline, labels, price/offer text, typography direction, logo/brand placement, and text hierarchy. |
| Negative Constraints | Explicitly prohibit inaccurate product details, distorted geometry, incorrect logos, unwanted objects, illegible text, artifacts, and unsupported claims. |

## 3. Priority Legend

- **Primary**: Must receive explicit, detailed instructions in the generated prompt.
- **Secondary**: Include when relevant; provide supporting direction without competing with the primary elements.
- **Optional**: Include only when the selected concept requires it.
- **Always enforced**: Negative Constraints apply to every category, regardless of the category's other priorities.

All nine elements remain available to the AI Agent. Priority controls depth and emphasis; it does not mean that an element must be omitted.

## 4. Category Configuration

### 4.1 Product

**Content Direction:** iPhone, iPad, Mac, Apple Watch  
**AI Agent Focus:** Product showcase

| Element | Priority | Category-specific instruction |
| --- | --- | --- |
| Subject & Product | Primary | Specify the exact product and model, supplied color, finish, materials, recognizable design, and important product details. |
| Action & Environment | Secondary | Use a clean studio, product display, or context that supports the product without distracting from it. |
| Composition | Primary | Make the product the hero subject; define centered or intentional placement, framing, scale, and detail views. |
| Visual Style | Primary | Premium, minimalist, polished commercial product photography. |
| Lighting | Secondary | Use controlled studio or natural lighting that reveals material, edges, and finish. |
| Camera & Quality | Primary | Specify professional product photography, sharp focus, realistic proportions, and clear product details. |
| Color & Mood | Secondary | Use a restrained palette that complements the supplied product color and premium positioning. |
| Text & Branding | Secondary | Add only approved headline, product name, or store identity when required by the brief. |
| Negative Constraints | Always enforced | No altered product design, incorrect camera layout, extra buttons or ports, wrong color, distorted proportions, inaccurate logo, or invented specifications. |

### 4.2 Promotion

**Content Direction:** Discounts, offers, campaigns  
**AI Agent Focus:** Promotional content

| Element | Priority | Category-specific instruction |
| --- | --- | --- |
| Subject & Product | Primary | Identify the exact promoted product/model and configuration supplied in the brief. |
| Action & Environment | Secondary | Use a promotional setting or product display that supports the offer. |
| Composition | Primary | Establish clear hierarchy between product, headline, price, discount, terms, and call to action. Keep text readable on mobile. |
| Visual Style | Primary | Attention-grabbing but premium commercial advertising; avoid clutter. |
| Lighting | Secondary | Use lighting that makes the product clear and visually appealing. |
| Camera & Quality | Secondary | Keep the product realistic, sharp, and visually legible. |
| Color & Mood | Primary | Use a campaign-appropriate palette with clear contrast and a persuasive but trustworthy mood. |
| Text & Branding | Primary | Include only confirmed headline, original price, promotional price, discount, campaign dates, terms, CTA, and approved store identity. |
| Negative Constraints | Always enforced | Never invent or alter prices, discount percentages, dates, eligibility, stock, or terms. No misleading urgency, unreadable offer text, distorted product, or unauthorized brand marks. |

### 4.3 Lifestyle

**Content Direction:** Apple ecosystem lifestyle  
**AI Agent Focus:** Lifestyle storytelling

| Element | Priority | Category-specific instruction |
| --- | --- | --- |
| Subject & Product | Secondary | Show the relevant Apple product or ecosystem devices naturally within the story. |
| Action & Environment | Primary | Describe the person, activity, real-life use case, location, and interaction between devices. |
| Composition | Primary | Use natural storytelling composition; balance people, products, and environment while keeping the main story clear. |
| Visual Style | Primary | Authentic, premium lifestyle or editorial photography; avoid artificial-looking scenes. |
| Lighting | Secondary | Prefer natural or context-appropriate lighting that supports the atmosphere. |
| Camera & Quality | Secondary | Use believable perspective, natural proportions, and professional photographic quality. |
| Color & Mood | Primary | Define an inviting, aspirational, calm, energetic, or productive mood with a coherent palette. |
| Text & Branding | Optional | Add a short message or store identity only when the concept requires it. |
| Negative Constraints | Always enforced | No unnatural hands or anatomy, implausible device interactions, incorrect product appearance, staged-looking clutter, or unsupported lifestyle/product claims. |

### 4.4 Education

**Content Direction:** Product features and tutorials  
**AI Agent Focus:** Educational content

| Element | Priority | Category-specific instruction |
| --- | --- | --- |
| Subject & Product | Primary | Identify the exact product, model, feature, setting, or task being explained. |
| Action & Environment | Secondary | Show the correct usage action or context when a demonstration helps explain the topic. |
| Composition | Primary | Use a clear instructional hierarchy, step sequence, callouts, close-ups, or diagrams as appropriate. |
| Visual Style | Secondary | Use clean, accessible educational design with a consistent visual system. |
| Lighting | Secondary | Ensure the product and demonstration details remain visible. |
| Camera & Quality | Secondary | Make interface or product details clear; use a suitable close-up or screen-focused view when needed. |
| Color & Mood | Secondary | Use a calm, clear, approachable palette that supports readability. |
| Text & Branding | Primary | Include accurate title, step labels, feature names, and concise instructions supplied or verified for the relevant model/software version. |
| Negative Constraints | Always enforced | No incorrect steps, fabricated features, outdated interface presented as current, unreadable labels, misleading diagrams, or inaccurate device details. |

### 4.5 News

**Content Direction:** Apple announcements and updates  
**AI Agent Focus:** News & updates

| Element | Priority | Category-specific instruction |
| --- | --- | --- |
| Subject & Product | Primary | Identify the specific product, announcement, event, software update, or topic being reported. |
| Action & Environment | Secondary | Use an event, product, or editorial context only when supported by the news item. |
| Composition | Primary | Establish an editorial hierarchy for the main subject, headline, date, and short supporting information. |
| Visual Style | Primary | Modern technology editorial design; distinguish news content from promotional advertising. |
| Lighting | Secondary | Use appropriate product or event lighting without distracting effects. |
| Camera & Quality | Secondary | Use clear, high-quality imagery and accurate subject representation. |
| Color & Mood | Secondary | Use a restrained palette consistent with the news tone and brand direction. |
| Text & Branding | Primary | Include a factual headline, relevant date, concise summary, and source attribution when required. |
| Negative Constraints | Always enforced | No fabricated announcements, dates, quotes, release details, specifications, or availability. Do not imply official Apple authorship or endorsement without confirmation. |

### 4.6 Comparison

**Content Direction:** Product comparisons  
**AI Agent Focus:** Product analysis

| Element | Priority | Category-specific instruction |
| --- | --- | --- |
| Subject & Product | Primary | Identify every product/model being compared and keep their identities distinct. |
| Action & Environment | Optional | Use a contextual environment only if it helps explain a real difference. |
| Composition | Primary | Use balanced side-by-side, split-screen, aligned product views, or a structured comparison layout. |
| Visual Style | Secondary | Use a clean analytical infographic or editorial comparison style. |
| Lighting | Secondary | Keep lighting and presentation consistent across compared products. |
| Camera & Quality | Primary | Maintain consistent scale, angle, sharpness, and detail so the comparison is fair. |
| Color & Mood | Secondary | Use neutral, distinguishable colors that support readability and fairness. |
| Text & Branding | Primary | Show correct model names and verified comparison labels/specifications; distinguish differences from shared features. |
| Negative Constraints | Always enforced | No fabricated specifications, unfair visual scaling, misleading feature claims, omitted context that changes meaning, or altered product designs. |

### 4.7 Tips

**Content Direction:** Tips, tricks and recommendations  
**AI Agent Focus:** Helpful content

| Element | Priority | Category-specific instruction |
| --- | --- | --- |
| Subject & Product | Primary | Identify the product, feature, app, or setting relevant to the tip. |
| Action & Environment | Secondary | Show the practical action or usage context when it helps the audience follow the tip. |
| Composition | Primary | Use a simple, scannable layout with a clear tip headline, demonstration, and visual steps when needed. |
| Visual Style | Secondary | Friendly, simple, informative, and consistent with the brand's visual identity. |
| Lighting | Secondary | Keep the demonstration clear and easy to understand. |
| Camera & Quality | Secondary | Use clear close-ups or screen-focused views where necessary. |
| Color & Mood | Secondary | Use an approachable, positive palette that preserves legibility. |
| Text & Branding | Primary | Include a concise tip, accurate steps, relevant labels, and a suitable CTA when needed. |
| Negative Constraints | Always enforced | No incorrect instructions, unsupported claims, fake interface elements, incompatible device steps, or illegible text. |

## 5. Global Accuracy and Brand Rules

Apply these rules to every category:

1. Preserve the exact product name and model provided or verified.
2. Do not invent product specifications, features, prices, promotions, availability, release dates, or news.
3. Use official Apple sources as the preferred reference for product and feature facts when research is required.
4. Treat user-provided prices and promotional terms as inputs; request confirmation if they are incomplete or inconsistent.
5. Do not alter the physical design, dimensions, camera layout, ports, buttons, materials, or color of Apple products.
6. Do not add or distort Apple logos, Apple Store marks, or other brand assets. Do not imply official Apple corporate affiliation or endorsement unless confirmed.
7. Make all text overlays concise, correctly spelled, and readable at the intended Instagram size.
8. If image generation cannot reliably render exact text, preserve a clear text-safe area and identify the required text separately for post-generation layout.
9. Follow the selected Instagram placement and aspect ratio supplied by the content brief. Do not assume a format if it has not been selected.
10. Keep the visual result mobile-first, clean, and consistent with Apple Store Malaysia's approved brand direction.

## 6. AI Agent Prompt Assembly Rules

When a category is selected:

1. Read its category configuration.
2. Collect the required product/topic facts and creative brief.
3. Resolve missing factual inputs before generating claims or text.
4. Expand Primary elements with explicit, category-specific instructions.
5. Add Secondary elements when they improve the concept or clarity.
6. Add Optional elements only when required by the brief.
7. Always append applicable Global Accuracy and Brand Rules as Negative Constraints.
8. Assemble the selected elements into one coherent Image Generation Prompt.
9. Keep factual content separate from creative suggestions.
10. Return the prompt for user review and editing before it is handed to an image-generation tool.

The AI Agent must not treat the priority table as a rigid image template. It must adapt the composition and visual treatment to the actual content concept while preserving factual accuracy.

## 7. Expected Output

For each content request, return:

- **Category**
- **Content Direction**
- **Creative Concept**
- **Image Generation Prompt**, organized using the nine global elements
- **Required Facts / Assets**, listing any facts or assets that still need confirmation
- **Selected Instagram Format / Aspect Ratio**, only when provided or confirmed

The result of this workflow is an Image Generation Prompt. It does not itself generate an image, create a caption, save a post, schedule content, or publish to Instagram.
