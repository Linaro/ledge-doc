.. SPDX-License-Identifier: CC-BY-SA-4.0

*******************
LEDGE RP USER GUIDE
*******************

Introduction
============

This document describes minimal steps to run LEDGE RP precompiled
images in virtual environment and play with it. It's recommended to
walk over steps in this document for initial introduction with the
Reference Platfrom.  Steps describe howto set up environment and
run binaries and login to the shell. For more technical details and
developer environment refer to LEDGE RP Developer Howto document.

Comments or change requests can be sent to team-ledge@linaro.org

Supported platforms
===================
- armv7/ledge-multi-armv7 (QEMU)
- armv8/ledge-multi-armv8 (QEMU)
- x86-64 (QEMU)

Steps
===========

Download LEDGE RP binaries:
---------------------------

Download into current directory following files, depending on CPU architecture:

.. code-block:: bash

	├── firmware.uefi.uboot.bin
	├── firmware.uefi-edk2.bin
	├── ledge-iot-ledge-qemuarm-<ts>.rootfs.wic.gz
	├── ledge-kernel-uefi-certs.ext4.img

| Development daily builds can be found at:
| https://snapshots.linaro.org/components/ledge/oe/
| (Linaro login required)
| Stable releases can be found at:
| http://releases.linaro.org/components/ledge/


Download QEMU run script:
-------------------------

Download helper script to run QEMU with all required parameters.

.. code-block:: bash

   git clone https://git.linaro.org/ledge/scripts.git/
   cd scripts/qemu

Unpack rootfs image:
--------------------

.. code-block:: bash

   gunzip ledge-*rootfs.wic.gz

Run virtual machine:
--------------------

Depending on your CPU architecture and firmware (UEFI-EDK2 or UEFI-UBOOT)
select one of the following options to run LEDGE RP under virtual machine:

- armv7 with TF-A, OP-TEE and U-Boot:

    ./run_qemu.sh arm ledge-iot-ledge-qemuarm-<ts>.rootfs.wic

- armv7 with EDK2:

    ./run_qemu.sh arm ledge-iot-ledge-qemuarm-<ts>.rootfs.wic ovmf

- armv8 with TF-A, OP-TEE and U-Boot:

    ./run_qemu.sh aarch64 ledge-iot-ledge-qemuarm64-<ts>.rootfs.wic

- armv8 with EDK2:

    ./run_qemu.sh aarch64 ledge-iot-ledge-qemuarm64-<ts>.rootfs.wic ovmf

- x86_64 with EDK2:

    ./run_qemu.sh x86_64 ledge-iot-ledge-qemux86-64-<ts>.rootfs.wic ovmf

You should see prints on console that firmware, bootloader, linux boots.

Login to the system
-------------------

Default user is 'ledge' with the same 'ledge' password. User is added to
sudoers.
