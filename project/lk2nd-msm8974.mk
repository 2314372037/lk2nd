# SPDX-License-Identifier: BSD-3-Clause
TARGET := msm8974
include lk2nd/project/lk2nd.mk

# Lumia 930 loads lk2nd from the dedicated 'aboot' partition via Stage2.efi,
# so do not split 512 KiB from the 'boot' partition. Otherwise, lk2nd shifts
# the 'boot' partition start offset by +512 KiB and fails to boot Android
# boot.img flashed at offset 0 by recovery ("ERROR: Invalid boot image header").
LK2ND_PARTITION_SIZE :=
