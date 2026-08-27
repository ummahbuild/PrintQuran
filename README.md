# PrintQuran / Sadaqah to Qur’an — Production Hardware Repository v0.2

A production-readiness reference package for a secure mosque donation appliance that advances through the Qur’an in sūrah order and prints the selected sūrah after a donation event.

**Core product rule:** donation amount does not change the amount of Qur’an printed. One accepted donation event advances exactly one sūrah. Public UI never exposes donor count, donation amounts, or transaction history.

## Status
This repository is **pre-EVT engineering source**, not a certified production design. It contains detailed product requirements, supply-chain targets, mechanical reference CAD, electrical interfaces, firmware behavior, Qur’an content integrity rules, manufacturing tests, service procedures, compliance planning, packaging, and RFQ materials. Any drawing or part marked `REFERENCE` must be verified by qualified engineers before tooling or certification.

## v0.2 production direction
- 80 mm phenol-free thermal paper; 72 mm-class printable width preferred.
- 203 dpi embedded printer with cutter and paper-out sensor.
- ESP32-S3 controller; no Raspberry Pi required for the base model.
- 12 V external certified PSU, sized for printer peak current.
- Optional LiFePO4 backup module.
- Physically isolated cash vault and printer/service bay.
- Regional certified NFC/card terminal; core device never handles raw card credentials.
- Offline-first Qur’an bundle with signed manifests and immutable Arabic source.
- One global chassis; replaceable cosmetic shells and regional payment bezel.

## Start here
1. `docs/00-PRODUCTION-ROADMAP.md`
2. `docs/01-PRD.md`
3. `hardware/mechanical/MECHANICAL-SPEC.md`
4. `hardware/electrical/ELECTRICAL-SPEC.md`
5. `sourcing/BOM-master.csv`
6. `manufacturing/CM-RFQ.md`
7. `quality/DVT-TEST-MATRIX.csv`
8. `content/QURAN-INTEGRITY.md`
9. `service/FIELD-SERVICE-MANUAL.md`

The reference OpenSCAD model under `hardware/mechanical/cad/` is editable and can be exported to STL for fit studies. It is **not** a tooling-ready enclosure.
