# Qur’an Content Integrity

## Non-negotiable architecture
AI must not generate, paraphrase, autocorrect, or dynamically translate Qur’anic Arabic at print time.

Pipeline:
1. import an approved canonical Arabic dataset under its license.
2. preserve source text exactly.
3. import specifically identified translation/transliteration resources.
4. normalize only metadata in a documented process; never silently mutate Arabic.
5. generate per-āyah SHA-256 hashes.
6. human review bundle/version metadata.
7. sign release manifest.
8. device verifies manifest and assets before rendering.

## Rendering
Arabic text is shaped by a tested renderer/font profile. Arabic source data and glyph rendering are separate layers. Every print test fixture should include golden raster comparisons for representative āyāt covering diacritics, ligatures, punctuation, and long lines.

## Progress metric
Do not hard-code a universal āyah total. The public progress denominator comes from the exact selected canonical bundle/numbering convention.

## Licensing
Tanzil and Quran Foundation/Quran.com resources have distinct usage/licensing expectations. Translation licenses vary by resource. Release engineering must keep a machine-readable provenance record and block any bundle without cleared redistribution rights.
