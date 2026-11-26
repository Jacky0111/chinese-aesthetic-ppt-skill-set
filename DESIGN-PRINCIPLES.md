# Design principles

These apply to every skill in this repository. Every `SKILL.md` carries the multilingual rules; for other design requirements, follow the rules of the chosen skill.

## Design

- One design language, no fixed page templates; content length, density, and logic decide composition and components.
- Resemblance in spirit: extract color, material, texture, gloss, rhythm, and atmosphere instead of copying figurative motifs from artifacts or buildings, unless the content needs to discuss them.
- Keep historical evidence separate from modern interpretation; record sources and unknowns separately.
- Keep body text, small labels, and chart notes legible over texture and highlights.
- Example images illustrate a style; they are not templates, historical evidence, or a default language.

## Multilingual output

- **Instruction language is not output language:** Skill instructions and documentation are written in English; this does not set the language of the presentation.
- **Choosing the output language automatically:** Follow the user's explicit choice. Otherwise infer it from the language and intent of the current input (slide content, request wording, context). No language is fixed, and neither the repository nor the instruction language is a default. Any language and mixed-language content are in scope.
- **Preserve the user's wording:** Never translate, rewrite, convert between Simplified and Traditional Chinese, or transliterate supplied content on your own initiative, including names, quotations, code, numbers, and units. Translate only when explicitly asked. If the requested output language differs from the supplied text and translation was not mentioned, no fixed follow-up question is needed: decide the language of newly written text from the user's input and keep the supplied text as it is.
- **Fit layout to the text:** Adjust type hierarchy, line breaks, columns, and slide count to actual text length. Do not force content in by shrinking it past legibility or clipping it.
- **Font coverage:** Use an available font that covers the target script, with no missing or invented glyphs. Where a skill names Song-style or sans-serif character, pick a serif or sans-serif of similar character for other scripts.
- **Reading direction:** For right-to-left scripts such as Arabic and Hebrew, mirror alignment, reading order, timelines, and process flow, keeping numbers, Latin words, and punctuation correct in mixed text. Use vertical setting only when the script supports it and the content calls for it.
- **Scope:** This section governs presentation content and layout. Layout advice, including calls for short captions, does not authorize cutting or condensing the user's wording. If supplied text conflicts with checkable history or a skill's historical boundaries, point it out and change it only after the user confirms.
- **Change the language, keep the style:** Preserve the chosen style's color, material, texture, gloss, depth, character, and atmosphere. Chinese text in example images is sample text: do not copy it or treat it as the default language.
- **Check before delivery:** Look for missing glyphs, misspellings, broken lines, punctuation, and direction errors. If image generation cannot render a script reliably, use editable text layers; if that is not possible, tell the user.
