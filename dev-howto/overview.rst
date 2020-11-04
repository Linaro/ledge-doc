.. SPDX-License-Identifier: CC-BY-SA-4.0

**************
LEDGE Overview
**************

General
=======

LEDGE images are related to IoT and EDGE devices. It has advanced security features supported:

 - Secure UEFI boot
 - OP-TEE (Open Portable Trusted Execution Environment)
 - ARM trusted Firmware (AT-F)
 - TianoCore EDK2 firmware or U-Boot with UEFI mode support
 - fTPM (Firmware TPM driver with backend to OP-TEE)
 - Kernel image sign with certificate
 - Kernel modules sign
 - IMA/EVM for integrity user applications
 - SElinux
 - Containerized isolation (docker)
 - Advanced system update

The LEDGE image consist of WIC image and firmware to boot this image on specific board or virtual machine.
This documentation describes how to build fully open source version of LEDGE reference platform and run it.


