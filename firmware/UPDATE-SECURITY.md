# Firmware and Content Update Security
- secure boot enabled for production where supported.
- signed firmware images.
- signed content bundles independently versioned from firmware.
- rollback protection after DVT unless service recovery explicitly invoked.
- update bundle verified before activation.
- current known-good firmware/content partition retained for rollback.
- USB service mode requires physical service-door access plus authenticated package.
