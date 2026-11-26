---
name: chinese-style-skill-workflow
description: Start the full research, brainstorming, five-slide preview, human-review, and bilingual implementation process for a new Chinese aesthetic design style. Do not create the formal style pack before approval.
---

# Chinese Aesthetic Style Intake Workflow

Use this workflow when the user names a new Chinese aesthetic style and wants to explore or create its presentation-design Skill. A style name alone is enough to begin: investigate its context, propose a direction, generate five previews, and submit them for review. Do not ask the user to restate requirements already defined here unless something material is missing.

## Non-negotiable boundaries

- **Human review is a required implementation gate.** On the first run, complete research, proposal, and five previews; present them and wait for explicit user approval. Silence, continued discussion, or “continue” without approval of the visual direction is not approval. Do not create a formal `SKILL.md`, archive assets as approved references, or update release catalogs before approval.
- Proceed only after the user clearly approves the current preview direction. If the user approves in a later turn, resume implementation without asking again.
- Unify reusable visual language and design principles, not page templates. Content determines layout, components, aspect ratio, and information density.
- Reference images explain color, material, texture, gloss, hierarchy, and visual rhythm. Do not reproduce a whole composition or its copy. Ceramic styles do not require literal ceramic objects by default.
- Chinese-aesthetic design seeks resemblance in spirit, not literal form. Extract tone, material, abstract texture, gloss, density, whitespace, line rhythm, and artistic character, then express them through modern layout. Do not copy flowers, dragons, landscapes, or other figurative decoration from an artifact into slides merely because it appears on the object. Use a literal motif only when the user’s content discusses it or it is necessary to explain the subject, and cite its source.
- Record provenance and rights status for historical claims, palettes, and assets. Use relative paths; never depend on personal-machine paths.
- Follow the repository contribution guide, project instructions (if any), asset-index convention, and export structure. Reuse existing rules instead of creating conflicting ones.

## Workflow

### 1. Investigate historical and visual evidence

Inspect existing skills, classification, asset indexes, and export structure first. Check whether a stable style ID already exists to avoid duplication. Use reliable first-hand collection records, archaeological/research institutions, or primary texts to investigate origins, region and period, cultural context, materials and techniques, colors, textures, and distinguishing visual features. Browse when facts are niche, disputed, or may have changed.

Separate findings into **verified facts, reasoned inferences, and unknown/disputed points**. Distinguish historical evidence from modern interpretation; do not generalize one object’s features to an entire kiln or period.

### 2. Brainstorm and propose a design direction

Explore a few distinguishable directions, then recommend one with its evidence, trade-offs, and uncertainties. Cover:

- palette and color hierarchy;
- material, texture, gloss, gradients, and natural variation;
- typographic character, hierarchy, whitespace, and reading rhythm;
- backgrounds, abstract textures, decorative rhythm, and their limits; explain the content need and source if retaining a figurative motif;
- how charts, tables, timelines, cards, and illustrations adapt to information relationships;
- how the style reaches the whole slide system while preserving readability.

Mark historical evidence separately from modern interpretation. Do not distinguish styles through color replacement alone or use figurative motifs as a shortcut to a Chinese aesthetic. Let content determine each composition; do not prescribe fixed layouts.

### 3. Generate five visual previews

Generate **exactly five separate** presentation-slide images around one theme; do not combine them into a contact sheet. The set must contain one cover, three content pages chosen to fit the theme, and one ending page. Cover and ending describe narrative roles, not fixed compositions; the three content pages should demonstrate varied content-led layouts. Use concise copy and one coherent visual language. Express the style through color, material, abstract texture, gloss, and visual rhythm. Do not transplant figurative flowers, dragons, landscapes, or other artifact motifs into slides unless the content itself needs to discuss them. Check how the visual language works across backgrounds, text zones, and components—not only in isolated decoration.

Use the available `imagegen` capability. Use the `presentations` workflow only when an actual slide file is requested; do not create a PPT/PPTX during this preview stage. Store previews temporarily in `visual-previews/<stable-style-id>/` and label them as design studies, not artifacts, final templates, or assets cleared for publication.

### 4. Human review and iteration — mandatory stop

Review each image for text accuracy, historical boundaries, presence of a cover and ending, layout variation across the three content pages, style identity, consistency, readability, and direct copying of figurative motifs from reference artifacts. Check contrast for body copy, small labels, and annotations over texture, glow, and highlights; add a stable text field or reduce local texture when needed. Present all five previews with a concise explanation of design choices and explicitly ask whether the user approves the direction.

- If the user requests changes, revise the proposal or affected images and present the new version; remain in preview mode.
- If the user explicitly approves, continue to stage 5.
- If the scope of approval is unclear, wait for clarification; do not infer approval.

**Stop implementation at this gate.** Never skip human review to save time or automate the workflow.

### 5. Create the formal style Skill after approval

Only after approval:

1. Choose a stable machine-readable English kebab-case ID. Create Chinese and English export packages using the proven Ruyao layout: `.agents/skills/<skill-id>/SKILL.md`, `agents/openai.yaml`, and `assets/README.md`; add `assets/examples/` and `references/` only when needed.
2. Keep `SKILL.md` concise. Define when it applies, its distinct visual language, adaptive composition rules, how to consult references, and the boundary against copying example layouts. Preserve content-led design and style consistency without template repetition.
3. Copy only reviewed and approved previews into `assets/examples/`. Record purpose, provenance/generation method, review and rights status, and usage limits. For source images, record attribution and permission. Mark unclear rights as `local-only` or `review-required`; never imply public clearance.
4. Use paths relative to the Skill directory. Update the language-neutral catalog, classification, version, and relevant Chinese and English READMEs. Keep stable IDs, versions, functionality, file structure, and binary assets aligned; professionally localize prose in each language.
5. Update the installer/catalog and asset indexes as needed. Remove duplicate temporary previews after formal archival; preserve source snapshots that have a distinct comparison purpose.

### 6. Validate cloning, invocation, and release gates

Run the existing validator. Check frontmatter and `agents/openai.yaml`, catalog/classification/version parity, relative paths and Markdown links, asset presence, bilingual asset hashes, installer behavior, and invocation ID. Clone/copy each export into a clean temporary location and confirm the Skill installs and can access its images. If rights or licenses remain unclear, release validation must fail and list the blockers.

Update the catalog, asset index, bilingual README, contribution docs, or release checklist directly affected by the new package. Skill completion does not authorize creating a GitHub repository, selecting a license, or pushing; follow the repository-setup approval gate.

## Completion report

Briefly report research conclusions and uncertainties, recommended visual direction, preview location or formal package paths, review status, synchronization and validation results, and any asset or repository decisions that still block public release. Before approval, state clearly that the work remains in preview and no formal Skill has been created.
