# Electrical Specification

## Architecture
External certified 12 V supply → input protection → printer 12 V rail + DC/DC 5 V + 3.3 V rails.

Base controller: ESP32-S3 module. Keep Wi-Fi optional at runtime; printing and cash operation must work with radio disabled.

## Power budget
Design 12 V input for **5 A peak** unless selected printer data supports lower. Printer is the dominant transient load. Logic/display average should remain low enough that idle power is single-digit watts.

Minimum protections:
- replaceable or resettable input fuse.
- reverse-polarity protection.
- TVS/transient suppression.
- brownout detection.
- independent watchdog.
- current/voltage telemetry optional but recommended.

## Interfaces
- Printer: UART preferred for MCU simplicity; USB serial acceptable.
- Display: SPI/RGB depending module.
- Rotary encoder: GPIO with debounce.
- Cash sensors: isolated/filtered GPIO.
- Door switches: GPIO with tamper state.
- Payment terminal: isolated serial/USB/Ethernet/event API depending regional module. Only consume sanitized payment result + amount-selection state.
- Service USB-C: firmware/service only; do not expose unsecured debug shell in production.

## Battery
Optional LiFePO4 pack gets separate BMS and charging/power-path design. Battery is backup, not required for core SKU. Firmware may queue printing if battery voltage cannot support cutter/print peak.
