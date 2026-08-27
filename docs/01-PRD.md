# Product Requirements Document

## Product promise
A donor gives privately. The machine prints the next sūrah in Qur’anic order. The public sees Qur’an progress, not financial activity.

## Public UX
Idle screen may show:
- complete Qur’ans printed.
- current Qur’an sequence number.
- current sūrah / 114.
- current āyah-progress based on the configured canonical dataset.
- operational state.

Must not show publicly:
- donation totals or currency.
- number of donors/donations.
- timestamps or recent-donation feed.
- payment method history.

## Donation behavior
Cash: sensor detects an insertion event; denomination is intentionally not estimated. Card/NFC: certified payment terminal returns payment-success event. Any donation amount maps to one print job.

## Print profiles
Admin-selectable, versioned:
- Arabic script profile.
- Arabic renderer/font.
- translation language and specific translation edition.
- transliteration source/style.
- Arabic/transliteration/translation enable flags.
- font sizes and spacing within bounded tested ranges.
- paper-saving mode.
- QR footer enable/disable.
- max continuous strip length.
- language selection exposed to donor or locked by admin.

## Long sūrahs
One sūrah may produce multiple cuts. Each part must contain complete āyāt only, carry `Part x of y`, and the sūrah advances only after the final successful cut is committed.

## Availability
Core cash + print function must work offline indefinitely. Network is optional for fleet management, content updates, diagnostics, and payment-terminal connectivity where required.
