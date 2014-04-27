# ld-run

This is a runner for **GNU Gold** linker for usage with **GHC**. 

It's a workaround for Gold's missing flag support. It simply suppresses unrecognised flags. I should give you faster linking. 

## Building

It requires local installation of GHC, `process` library and Gold(obviously). 

    make

## Installation

    make install

This will build and copy the executable to `/usr/local/bin/` thus preceeding `ld` when searching `$PATH`. 

## Uninstallation 

    make uninstall

Simply removes `/usr/local/bin/ld`