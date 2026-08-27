# Regional Payment Abstraction

The core machine is not a payment terminal.

## UX
Rotary encoder selects preset donation amount for NFC/card. Presets are configured per deployment and currency. Cash donation ignores the dial.

## Interface contract
Payment module returns only:
- `PAYMENT_STARTED`
- `PAYMENT_APPROVED(transaction_token)`
- `PAYMENT_DECLINED(reason_class)`
- `PAYMENT_CANCELLED`
- `PAYMENT_OFFLINE`

Core firmware should not receive PAN/card credentials. Transaction token may be retained only when needed for reconciliation and under deployment policy.

## SKU strategy
Use an interchangeable payment bezel/adapter plate. Keep core chassis, controller, printer and software identical across countries.
