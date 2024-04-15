#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's recovery device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit some common recovery stuff.
$(call inherit-product, vendor/recovery/config/common.mk)

# Inherit from vida device
$(call inherit-product, device/xiaomi/vida/device.mk)

PRODUCT_DEVICE := vida
PRODUCT_NAME := recovery_vida
PRODUCT_BRAND := xiaomi
PRODUCT_MODEL := Redmi Note 11S/Poco M4 Pro
PRODUCT_MANUFACTURER := xiaomi
