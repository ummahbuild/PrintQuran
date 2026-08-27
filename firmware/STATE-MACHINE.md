# Print State Machine

`IDLE -> DONATION_PENDING -> DONATION_ACCEPTED -> JOB_LOCKED -> PREFLIGHT -> RENDER -> PRINT_PART -> VERIFY_CUT -> ... -> COMMIT_SURAH -> THANK_YOU -> IDLE`

## Atomicity rule
The current sūrah pointer advances only after the final part has returned a successful print/cut completion and the durable job journal is committed.

## Recovery
Every transition writes an append-only journal record with job UUID, content bundle hash, print profile hash, sūrah, part, and status. On reboot, incomplete jobs resume or enter service-recovery; they never silently advance.

## Cash debounce
A cash event requires a valid beam sequence lasting within configured min/max duration. Lockout prevents multiple prints from one note moving through the chute. Coins require a dedicated separate sensor path if supported; v1 may be notes-only to reduce false events.
