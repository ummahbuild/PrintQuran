# Threat Model
Assets: cash, device availability, Qur’an content integrity, firmware integrity, payment tokens, admin settings.

Security boundaries:
- cash vault.
- service bay.
- payment module.
- controller.
- signed content store.
- admin/fleet service.

Abuse cases:
- fish notes through slot.
- inject repeated cash sensor pulses.
- force payment-approved event.
- open door and trigger unauthorized update.
- corrupt Qur’an data.
- replay old vulnerable firmware.
- steal full device.

Mitigations are layered: physical baffle, dual-beam/debounce logic, signed firmware/content, authenticated service packages, isolated payment event contract, tamper logs, anchors, separate locks.
