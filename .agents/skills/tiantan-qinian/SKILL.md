---
name: tiantan-qinian
description: Create content-adaptive presentations inspired by the ritual aesthetics and celestial atmosphere of the Temple of Heaven's Hall of Prayer for Good Harvests, using sapphire blue, cinnabar, restrained gilt, and marble-like layers without literal architectural imitation or fixed layouts.
---

# Temple of Heaven Qinian

Let each page structure respond to the input's length, information density, logic, and purpose. Build recognition through the depth and sheen of sapphire glaze, the vertical rhythm of cinnabar, restrained gilded highlights, and marble-like negative space. Read [`assets/README.md`](assets/README.md) first. Historical evidence and the limits of modern interpretation are documented in [`references/sources.md`](references/sources.md).

## Visual language

- **Color:** Use sapphire blue as the atmospheric foundation, cinnabar for limited structural rhythm, gilt for fine lines and focal highlights, and Han-white/marble tones for stable reading areas and layered negative space. Adjust proportions to the content. Avoid broad gold fields or rigid red borders.
- **Material and light:** Suggest glazed depth with fine sheen and tonal gradients; keep cinnabar grounded and softly matte; reserve gold for delicate accents; use subtle marble-like grain and layered edges to create breathing room. Material cues may extend into charts and components without reducing legibility.
- **Spatial mood:** Express ritual stillness through gradients, partial arcs, inward light, depth, and negative space. Circularity may appear as an incomplete or offset curve, but is not required on every page. Pair structured information with softer curves when useful.
- **Architectural translation:** Translate glazed tiles into tonal depth, column rhythm into typographic cadence, tiered roof geometry into levels of emphasis, and the marble terrace into stable layers or open space. Unless the content directly discusses the building, do not depict the Hall, its roof, columns, terrace, or literal traditional motifs.
- **Content adaptation:** A chronology may use a timeline or period narrative; a ritual sequence may use steps, relations, or parallel groups; a conceptual explanation may use a strong title, concise annotations, and open space; data should use charts suited to its actual relationships. These are options, not templates.
- **Flexible composition:** Vary focal point, direction, spacing, component scale, and information structure from page to page. Consistency comes from the blue-red-gold-white relationships, glazed sheen, vertical cadence, and celestial depth—not from repeating the same ring, arc, or title position.
- **Legibility:** Place body text, small labels, and chart annotations in stable, low-texture areas. Keep text clear of gilded highlights and sharp blue transitions. Add an opaque reading field, reduce local texture, or strengthen contrast when needed.
- **Historical boundaries:** The hall's form and name changed over time. Do not describe the present building as the original circular Hall of 1420. Use [`references/sources.md`](references/sources.md) for dates and historical claims. Visual examples are not historical evidence or architectural reconstructions.

## Using the resources

Read [`assets/README.md`](assets/README.md) before designing. When visual calibration is needed, consult the relevant page-role example in `assets/examples/`. Use the images to understand color, material, depth, spacing, and mood; do not copy their wording, full-page compositions, or element positions. Let the actual content determine each page.

## Multilingual output

This section takes precedence over any other statement in this skill about language, typefaces, or reading direction.

- **Instruction language is not output language:** This file is written in English; it does not set the language of the presentation.
- **Choosing the output language automatically:** Follow the user's explicit choice. Otherwise infer it from the language and intent of the current input (slide content, request wording, context). No language is fixed, and neither the repository nor the instruction language is a default. Any language and mixed-language content are in scope.
- **Preserve the user's wording:** Never translate, rewrite, convert between Simplified and Traditional Chinese, or transliterate supplied content on your own initiative, including names, quotations, code, numbers, and units. Translate only when explicitly asked. Supplied text must appear character for character, including punctuation, capitalization, numbers, and units: add no terminal punctuation and swap no marks; line breaks may move but must not add or remove characters. If the requested output language differs from the supplied text and translation was not mentioned, no fixed follow-up question is needed: decide the language of newly written text from the user's input and keep the supplied text as it is.
- **Fit layout to the text:** Adjust type hierarchy, line breaks, columns, and slide count to actual text length. Do not force content in by shrinking it past legibility or clipping it.
- **Font coverage:** Use an available font that covers the target script, with no missing or invented glyphs. Where this skill names Song-style or sans-serif character, pick a serif or sans-serif of similar character for other scripts.
- **Reading direction:** For right-to-left scripts such as Arabic and Hebrew, mirror alignment, reading order, timelines, and process flow, keeping numbers, Latin words, and punctuation correct in mixed text. Use vertical setting only when the script supports it and the content calls for it.
- **Scope:** This section governs presentation content and layout. Layout advice, including calls for short captions, does not authorize cutting or condensing the user's wording. If supplied text conflicts with checkable history or this skill's historical boundaries, point it out and change it only after the user confirms.
- **Change the language, keep the style:** Preserve this skill's color, material, texture, gloss, depth, character, and atmosphere. Chinese text in example images is sample text: do not copy it or treat it as the default language.
- **Check before delivery:** When calling image generation, quote the slide text exactly in the prompt and state that no punctuation may be added, removed, or replaced. Before delivery, compare the text actually rendered with the user's text character by character, including the end of every line; fix or disclose any difference, and report what the image really shows. Also look for missing glyphs, misspellings, broken lines, and direction errors. If image generation cannot render a script reliably, use editable text layers; if that is not possible, tell the user.
