<!--
Copyright (C) Daniel Stenberg, <daniel@haxx.se>, et al.

SPDX-License-Identifier: curl
-->

# curl9x

This is a backport of [curl](https://github.com/curl/curl) to older versions of Windows, up to and including Windows NT 3.51.

## Requirements

curl requires Winsock 2 in order to work properly If you are using Windows NT 3.51 or an early version of Windows 95 that doesn't support Winsock 2, you will also need [winsock351](https://github.com/DaniElectra/winsock351).

## Building

You will need to use Visual C++ 6.0 to build curl with support for old versions.

1. Apply the patches on this repo on top of curl submodule
2. Run `autoconf.bat` to generate the `tool/hugehelp.c` file
3. Enter the `winbuild` folder and execute the following using a Developer Command Prompt:

```
nmake /f Makefile.vc mode=static VC=6 ENABLE_SSPI=no ENABLE_IPV6=no ENABLE_IDN=no ENABLE_SCHANNEL=no DEBUG=no GEN_PDB=yes RTLIBCFG=static
```

The current mandatory options are the following:

- **VC=6**
- **ENABLE_SSPI=no**
- **ENABLE_IPV6=no** (if using an operating system that doesn't support Winsock 2 natively)
- **ENABLE_IDN=no**
- **ENABLE_SCHANNEL=no**
- **RTLIBCFG=static** (if targeting Windows NT 3.51, otherwise you will require `msvcrt.dll` to be present on your system)

Every other option can be customized to your liking.
