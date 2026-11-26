# Release checklist

Confirm each item for every release.

## Content and rights
- [ ] Record generation method, provenance, and rights status for new assets; do not publish uncleared assets.
- [ ] Check facts, source credits, and text in each image; list open items in `KNOWN-ISSUES.md`.
- [ ] Links in `references/sources.md` resolve, or carry a check date.
- [ ] No secrets, personal paths, private email addresses, or redundant files.

## Function
- [ ] Every `SKILL.md` has the multilingual section, consistent with `DESIGN-PRINCIPLES.md`.
- [ ] Spot-check real generation in Chinese, a Latin-script language, a right-to-left language, and mixed-language content.
- [ ] `python3 tooling/package_doubao.py` passes for every style skill; spot-check small text in the downscaled images.
- [ ] Record discovery, installation, resource loading, invocation, and generation per platform; mark untested items.

## Version and parity
- [ ] `VERSION`, `catalog/`, README tables, and `CHANGELOG.md` agree and carry the release date.
- [ ] `python3 tooling/validate.py --release` passes; file lists and binary assets match across repositories.
- [ ] Documentation in both languages is reviewed by a person.
- [ ] Verify installer, relative paths, and cross-repository links from a clean clone.

## Publishing
- [ ] Push only after explicit maintainer approval.
- [ ] Tag `vX.Y.Z` and create a release.
