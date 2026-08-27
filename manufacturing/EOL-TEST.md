# End-of-Line Test
Target <6 minutes/device.

Automated checks:
- serial/MAC identity.
- firmware signature/version.
- content manifest signature/version.
- all rails within limits.
- display pixels/test image.
- encoder and push switch.
- cash sensor beam sequence using fixture flag.
- service/cash door switches.
- printer status.
- print golden test strip with Arabic glyph test raster + QR/serial block.
- cutter operation.
- optional battery voltage/charge path.
- payment-module interface loopback where installed.
- Wi-Fi/BLE RF sanity test, not a substitute for certification.

Operator scans test strip and fixture records PASS/FAIL against serial.
