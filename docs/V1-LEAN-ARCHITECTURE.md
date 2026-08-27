# PQ-CASH V1 Lean Architecture
Base V1 includes only: 80 mm cutter printer, ESP32-S3-class controller, 2.4-3.5 inch non-touch status display, narrow note slot, baffled steel chute, two optical donation-event sensors, isolated locked steel cash cassette, door/cassette sensing, external certified 12 V PSU, internal storage and service USB.

Removed: speaker, microphone, camera, touchscreen, bill-value recognition, amount dial, required Wi-Fi/battery, decorative audio/lighting and AI-generated Qur'anic content.

Cash path: slot -> baffle -> sensor A -> direction change -> sensor B -> cassette. Valid A-to-B motion creates one durable print credit. Print credit locks the next surah, preflights, renders, prints/cuts every part, commits, then advances.
