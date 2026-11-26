---
name: ming-forbidden-city
description: Create content-adaptive presentations inspired by Ming Forbidden City architecture through cinnabar, imperial gold, glazed white, mineral texture, and angled light; express spatial atmosphere without fixed layouts.
---

# Ming Forbidden City

Let content length, information density, and logic determine each slide composition. Maintain a consistent language through cinnabar, imperial gold, glazed white, mineral texture, angled light, and spatial depth. Read [`assets/README.md`](assets/README.md) first; historical evidence and interpretation boundaries are in [`references/sources.md`](references/sources.md).

## Visual language

- **Color:** Let cinnabar and imperial gold carry the focal emphasis; use glazed white as a reading field, with Han-white as an optional local layer. Adjust proportions for content. This is a modern design palette, not a colorimetric reconstruction of Ming architecture.
- **Material and light:** Suggest finely textured mineral walls, warm light grazing cinnabar, soft long shadows, and the subtle grain of glazed white. Carry texture through the page system—backgrounds, edges of text areas, data graphics, and components—without requiring literal buildings or objects.
- **Character:** Dignified, expansive, composed, and refined. Express courtly order through color weight, depth of light and shadow, whitespace, and detail density. Avoid faux-antique decoration, all-over gold, and rigid symmetrical boxes.
- **Layout:** Let content determine composition. Choose timelines, causal relationships, comparisons, charts, narrative whitespace, or other structures according to the information. Title, color fields, light bands, and components may move and change; do not turn example pages into templates.
- **Architectural translation:** Abstract the planes and shadows of palace walls, glazed surface sheen, layered platforms, roof rhythms, and structural cadence into color movement, light-shadow edges, layering, and geometric rhythm. Do not collage palaces, eaves, dougong brackets, dragons, or other literal motifs unless the content specifically discusses them.
- **Readability:** Keep body copy, footnotes, and chart labels on stable low-texture fields with clear contrast. Keep text clear of highlights, gold light bands, and rapidly changing light-dark areas; reduce local texture or add a solid/translucent reading field when needed.

## Consulting visual resources

Read [`assets/README.md`](assets/README.md) before designing. Consult `assets/approved-direction-wall-shadow.png` to calibrate the approved direction, then review relevant examples in `assets/examples/` as needed. They illustrate color, material, light, hierarchy, and atmosphere; do not copy their complete compositions, copy, or element positions. Let the actual content drive every slide. Base historical claims on [`references/sources.md`](references/sources.md), never on preview images alone.

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
