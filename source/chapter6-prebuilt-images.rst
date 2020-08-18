.. SPDX-License-Identifier: CC-BY-SA-4.0

***************
Prebuilt images
***************

This chapter describes how to download and use precompiled images

Supported platforms
===================
- armv7/ledge-multi-armv7 (qemu)
- armv8/ledge-multi-armv8 (qemu)
- x86-64 (qemu)

Steps
===========

Download sources:
-----------------

.. code-block:: bash

   git clone https://git.linaro.org/ledge/scripts.git/
   cd scripts/qemu

Setup environment and run:
--------------------------
armv7 with TF-A, OP-TEE and U-Boot:
-----------------------------------

| Download the following files in your current directory from
| https://snapshots.linaro.org/components/ledge/oe/ledge-multi-armv7/latest/rpb/ledge-qemuarm/
| Note: Linaro login required

.. code-block:: bash

	├── firmware.bin
	├── ledge-iot-ledge-qemuarm-20200312084843.rootfs.wic.gz
	├── ledge-kernel-uefi-certs.ext4.img

.. code-block:: bash

    gunzip ledge-iot-ledge-qemuarm-20200312084843.rootfs.wic.gz

    ./run_qemu.sh arm ledge-iot-ledge-qemuarm-20200312084843.rootfs.wic

armv7 with EDK2:
----------------

| Download the following files in your current directory from
| https://snapshots.linaro.org/components/ledge/oe/ledge-multi-armv7/latest/rpb/ledge-qemuarm/
| Note: Linaro login required

.. code-block:: bash

	├── ledge-iot-ledge-qemuarm-20200312084843.rootfs.wic.gz

.. code-block:: bash

    wget https://storage.kernelci.org/images/uefi/111bbcf87621/QEMU_EFI.fd-ARM-RELEASE-111bbcf87621
    mv QEMU_EFI.fd-ARM-RELEASE-111bbcf87621 QEMU_EFI.fd
    gunzip ledge-iot-ledge-qemuarm-20200312084843.rootfs.wic.gz

    ./run_qemu.sh arm ledge-iot-ledge-qemuarm-20200312084843.rootfs.wic ovmf

armv8 with TF-A, OP-TEE and U-Boot:
-----------------------------------

| Download the following files in your current directory from
| https://snapshots.linaro.org/components/ledge/oe/ledge-multi-armv8/latest/rpb/ledge-qemuarm64/
| Note: Linaro login required

.. code-block:: bash

	├── firmware.bin
	├── ledge-iot-ledge-qemuarm64-20200312084607.rootfs.wic.gz
	├── ledge-kernel-uefi-certs.ext4.img

.. code-block:: bash

    gunzip ledge-iot-ledge-qemuarm64-20200312084607.rootfs.wic.gz

    ./run_qemu.sh aarch64 ledge-iot-ledge-qemuarm64-20200312084607.rootfs.wic

armv8 with EDK2
---------------

| Download the following files in your current directory from
| https://snapshots.linaro.org/components/ledge/oe/ledge-multi-armv8/latest/rpb/ledge-qemuarm64/
| Note: Linaro login required

.. code-block:: bash

	├── ledge-iot-ledge-qemuarm64-20200312084607.rootfs.wic.gz

.. code-block:: bash

    gunzip ledge-iot-ledge-qemuarm64-20200312084607.rootfs.wic.gz
    wget https://storage.kernelci.org/images/uefi/111bbcf87621/QEMU_EFI.fd-AARCH64-RELEASE-111bbcf87621
    mv QEMU_EFI.fd-AARCH64-RELEASE-111bbcf87621 QEMU_EFI.fd

    ./run_qemu.sh aarch64 ledge-iot-ledge-qemuarm64-20200312084607.rootfs.wic ovmf


x86_64 with EDK2:
-----------------

| Download the following files in your current directory from
| https://snapshots.linaro.org/components/ledge/oe/ledge-qemux86-64/latest/rpb/
| Note: Linaro login required

.. code-block:: bash

	├── ovmf.qcow2
	├── ledge-iot-ledge-qemux86-64-20200312090121.rootfs.wic.gz

.. code-block:: bash

    gunzip ledge-iot-ledge-qemux86-64-20200312090121.rootfs.wic.gz

    ./run_qemu.sh x86_64 ledge-iot-ledge-qemux86-64-20200312090121.rootfs.wic ovmf
