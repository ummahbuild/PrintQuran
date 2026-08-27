# Production Roadmap

## Phase 0 — Requirements freeze
Exit only when the team freezes: 80 mm paper, max roll diameter, device envelope, printer interface, cash capacity, payment integration boundary, print profile schema, public privacy rules, target markets, and target cost.

## EVT (10–30 units)
Objectives: validate printer integration, power transients, paper path, long-sūrah pagination, cash chute anti-fishing geometry, serviceability, thermals, battery behavior, content integrity, and enclosure fit.

Mandatory EVT builds:
- 5 bench electronics rigs.
- 5 sheet-metal mechanical prototypes.
- 10 integrated devices minimum.
- at least 3 printer suppliers evaluated before design lock.

Exit gates:
- 10,000 automated print/cut cycles without state corruption.
- 500 donation-to-print cycles with no false sūrah advancement.
- power-cut recovery at every state transition.
- 100% content bundle signature rejection test coverage.
- paper reload <60 seconds by a first-time volunteer after reading the inside label.
- cash cassette removed/replaced without service bay access.

## DVT (30–80 units)
Objectives: validate near-production materials and fabrication, tamper resistance, ESD/EMI pre-compliance, temperature/humidity envelope, transport packaging, field maintenance, regional payment modules, and localization.

Exit gates include all rows marked `DVT_BLOCKER` in `quality/DVT-TEST-MATRIX.csv`.

## PVT (100–300 units)
Use the intended contract manufacturer, tooling, PCB assembler, harness vendor, locks, printer supplier, PSU, paper, carton, work instructions, end-of-line test fixture, and serialization flow.

Targets:
- first-pass yield >=95%.
- rework <3%.
- EOL test <6 minutes/device.
- assembly labor <20 minutes/device excluding burn-in.
- carton packout <4 minutes.

## Pilot deployment
20–50 devices across different mosque operating environments for 60–90 days. Record only operational telemetry and approved privacy-safe metrics; never expose donation amounts publicly.

## Production release
No release until compliance, safety, content review, manufacturing PPAP-like evidence, supplier change-control, warranty spares, and incident procedures are signed off.
