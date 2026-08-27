# Printer Hardware Abstraction
Required operations:
- `status()`
- `feed(mm)`
- `print_bitmap(rows)`
- `cut()`
- `paper_present()`
- `temperature_state()` if available
- `error_state()`

Rendering to a deterministic raster before print is preferred for Arabic shaping consistency across printer vendors. Printer-native text fonts must not be trusted for Qur’an rendering.
