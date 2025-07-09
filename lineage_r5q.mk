#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from qssi device
$(call inherit-product, device/samsung/r5q/device.mk)

PRODUCT_DEVICE := r5q
PRODUCT_NAME := lineage_r5q
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G770F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="r5qnaxx-user 13 TP1A.220624.014 G770FXXS9HXA1 release-keys"

BUILD_FINGERPRINT := samsung/r5qnaxx/r5q:13/TP1A.220624.014/G770FXXS9HXA1:user/release-keys
