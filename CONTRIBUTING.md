# Contributing

## New styles

Follow the [`chinese-style-skill-workflow`](.agents/skills/chinese-style-skill-workflow/SKILL.md) process: investigate and brainstorm, propose a design direction, generate five previews, review them with the user, then implement the skill pack. The five previews must include a cover, three content pages, and an ending. Separate historical evidence from modern interpretation. Seek resemblance in spirit, not literal form: extract tone, material, abstract texture, gloss, whitespace, and artistic character instead of pasting flowers, dragons, landscapes, or other figurative motifs from reference artifacts into slides unless the content needs to discuss them. Do not create a formal skill before the visual direction is approved.

## Skill layout

Follow the proven Ruyao structure:

```text
.agents/skills/<skill-id>/
├── SKILL.md
├── agents/openai.yaml
├── assets/README.md         # style skills
├── assets/examples/         # optional
└── references/              # only when sources or detailed guidance are useful
```

Classification is recorded in `catalog/styles.json` and `catalog/workflows.json`.

Use relative asset paths, never personal directories. The asset index must record purpose, provenance/generation method, review status, and rights status. Examples inform a visual language; they do not define templates. Workflow Skills should reuse the style process above and retain the mandatory human-review gate.

## Multilingual output

Every `SKILL.md` must keep the same "Multilingual output" section as the existing skills; the repository language must never limit output language. When changing it, update all skills and `DESIGN-PRINCIPLES.md`.

## Versioning

Follow Semantic Versioning: breaking changes (skill IDs, layout, invocation) raise the major version, or the minor version during 0.x; compatible new styles or capabilities raise the minor version; fixes raise the patch version. Update `VERSION`, `catalog/`, the README header and version tables, and `CHANGELOG.md` together. Skill versions currently match the collection version.

## Bilingual maintenance

Keep Skill IDs, versions, classifications, file structure, and binary assets aligned between Chinese and English exports. Localize user-facing prose professionally; do not rely on unreviewed machine translation. Run `python3 tooling/validate.py` after changes.

## Licensing of contributions

By contributing, you license code (`install.sh`, `tooling/`) under MIT and everything else under CC BY 4.0, and you confirm that you have the right to submit it. For assets, state the generation method or source, whether reference images were used, and their permissions.
