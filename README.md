# Keyboard Firmware

A custom keyboard firmware written in Zig, designed for split mechanical keyboards. This project uses the microzig framework for embedded development and supports QMK-style configuration.

## Features

- QMK-compatible configuration using JSON
- Support for split keyboard layouts (e.g., Corne)
- GPIO pin management is 1x1 for key to pin mapping instead of matrix
- Built with microzig for reliable embedded development


## Project Structure

```
keyboard-firmware/
├── src/
│   ├── main.zig        # Main firmware entry point
│   ├── config.zig      # Configuration handling
│   └── keyboard.json   # QMK-compatible Keyboard layout and settings
└── build.zig          # Build system configuration
└── build.zig.zon      # Build manager
```

## Prerequisites

- Zig 0.13.0 (It has dependency on microzig support for zig version)
- [microzig](https://github.com/ZigEmbeddedGroup/microzig)
- A supported microcontroller (RP2040)

## Building

To build the firmware:

```bash
zig build
```

The compiled firmware will be available in the `zig-out/firmware` directory.

## Configuration

The keyboard is configured through `src/keyboard.json`. This file follows a QMK-compatible format and includes:

- Keyboard name and metadata
- USB configuration
- Matrix layout
- Layer definitions
- Feature toggles
- Pin assignments
