#
# Copyright (C) 2023 The LegionOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from spes/spesn device
$(call inherit-product, device/xiaomi/spes/device.mk)

# Inherit some common LegionOS stuff.
$(call inherit-product, vendor/legion/config/common.mk)

TARGET_BOOT_ANIMATION_RES := 1080

# Product Specifics
PRODUCT_NAME := legion_spes
PRODUCT_DEVICE := spes
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 11
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="spes-global 12 SKQ1.211103.001 V13.0.12.0.SGCMIXM release-keys"

BUILD_FINGERPRINT := Redmi/spes/spes:12/SKQ1.211103.001/V13.0.12.0.SGCMIXM:user/release-keys
