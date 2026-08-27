# Factory Provisioning
Factory firmware is not production firmware.

Provisioning station:
1. reads PCB serial/MAC.
2. runs board test.
3. writes device certificate/identity if fleet mode used.
4. flashes signed production firmware.
5. installs signed content bundle selected for SKU/region.
6. writes immutable manufacturing record: BOM rev, PCB rev, printer lot, display lot, PSU lot, enclosure lot.
7. runs EOL.
8. locks debug features according to release policy.

Signing keys must never be present on the contract-manufacturer line in exportable form.
