# Deterministic Print Renderer

Input: signed content bundle + signed/authorized print profile.
Output: ordered raster pages/strips plus a pagination manifest.

Rules:
- never split inside an āyah block unless a future reviewed mode explicitly supports it.
- calculate physical length from rendered raster rows, not estimated verse count.
- include sūrah number/name and part x/y on every part.
- verse number visually associated with its Arabic block.
- translation and transliteration labels/styles must make it impossible to confuse them with Qur’anic Arabic.
- maximum strip length configurable to reduce floor contact/curl.
- run preflight against remaining paper estimate before starting long jobs where sensor data supports it.
