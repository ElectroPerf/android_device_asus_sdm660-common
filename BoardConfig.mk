#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sdm660-common
-include device/asus/sdm660-common/BoardConfigCommon.mk

DEVICE_PATH := device/asus/X01BD

# Inherit the proprietary files
-include vendor/asus/X01BD/BoardConfigVendor.mk
