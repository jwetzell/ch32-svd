# Patched SVD files for STM32 MCUs

This repository contains SVD files for most STM32 chips, generated from the [ch32-rs](https://github.com/ch32-rs/ch32-rs), part of the [Rust Embedded](https://github.com/rust-embedded) community. These files are originally from the [MounRiver IDE](https://www.mounriver.com/) but have many patches to fix bugs and fill in gaps in the original SVD files.

These files are not intended to be modified. Instead, they are intended to be used as any SVD file, for example to generate access to registers for various languages.

## Installation Requirements

SVD tooling is required. You will need to do something like this:

- **svdtools**: Install with `cargo install svdtools --version 0.5.0`
- **Git** with submodule support

The `svdtools` command must be available in your PATH, which can be done by adding `$HOME/.cargo/bin` to your PATH from a location like `.bashrc`.

## Contributing

Please do not contribute changes directly to the SVD files in this repository. Instead, contribute patches upstream in the [ch32-rs](https://github.com/ch32-rs/ch32-rs) repository.

## Updating

From time to time this repository will need to be updated, to incorporate changes from upstream. You can do so as follows:

 1. Make sure the ch32-rs submodule is pulled, using `git submodule update --init`.
 2. Download the latest patches by going to the ch32-rs subdirectory and running `git pull`.
 3. Run `make`.

Please ensure that the `wch` targets supported by TinyGo can still be built:

 1. Regenerate device files from the update SVD files: `make gen-device-wch`
 2. Build src/examples/blinky for all wch targets
    
## License

I have not been able to locate a license for the source SVD files that ch32-rs is processing, this has been brought up on the repo [here](https://github.com/ch32-rs/ch32-rs/issues/21) but I don't see any resolution. Problematic?