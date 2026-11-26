# Changelog

Versions follow [Semantic Versioning](https://semver.org/). Interfaces may still change during 0.x. The Chinese and English repositories share one version.

## [0.2.1] - 2026-11-26

### Changed

- Skills are now versioned independently. To reflect earlier revision rounds: Ruyao Sky Blue `2.7.0`, Jian Ware Yaobian `2.1.0`, Ming Forbidden City `2.5.0`, Temple of Heaven Qinian `2.1.0`, Tang Timber Architecture `2.2.0`.

### Fixed

- Multilingual rules now require supplied text character for character, punctuation included, checked against the rendered image before delivery.
- The Huizhou skill adds a framing boundary: no whole building or full courtyard scene, and a black, white, and gray palette throughout.

## [0.2.0] - 2026-11-26

### Added

- A "Multilingual output" section in all 14 skills: output language, preservation of user wording, layout, fonts, reading direction, and style consistency.
- `DESIGN-PRINCIPLES.md`, `VERSION`, and this changelog.
- Validation of the multilingual section, version consistency, and matching file lists.
- `--platform` and `--project` options for `install.sh`.
- `tooling/package_doubao.py`, which packages each style skill within Doubao limits (requires libwebp).
- Security policy, code of conduct, issue and pull request templates, and a validation workflow.
- README banner and header, contribution licensing terms, and both canonical multilingual sections in the workflow skill.

### Changed

- Skill descriptions and the Ruyao typography rule no longer limit output to Chinese presentations.
- Output language is decided automatically from the user's input, with no fixed language or mandatory follow-up question.
- Validator messages are now bilingual.
- The README compatibility table now separates discovery, invocation, resource loading, and generation.
- The validator also checks root documents, the header version, example counts, catalog fields, and the release date.

### Fixed

- Aligned the English Ruyao skill with the Chinese one; removed a source entry that pointed only to the museum home page.

## [0.1.0] - 2026-11-26

### Added

- Initial public release: 13 style skills and the new-style workflow under `.agents/skills/`.
- Installer, validator, MIT and CC BY 4.0 license notes, and a known-issues list.
