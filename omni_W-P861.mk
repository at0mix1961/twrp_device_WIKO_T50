#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from W-P861 device
$(call inherit-product, device/wiko/W-P861/device.mk)

PRODUCT_DEVICE := W-P861
PRODUCT_NAME := omni_W-P861
PRODUCT_BRAND := WIKO
PRODUCT_MODEL := WIKO T50
PRODUCT_MANUFACTURER := wiko

PRODUCT_GMS_CLIENTID_BASE := android-wiko

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_p861-user 11 RP1A.200720.011 1660643060 release-keys"

BUILD_FINGERPRINT := WIKO/W-P861/W-P861:11/RP1A.200720.011/1660643060:user/release-keys
