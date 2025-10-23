#
# Copyright (C) 2020 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


# Inherit from r5q device
$(call inherit-product, device/samsung/r5q/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_r5q
PRODUCT_DEVICE := r5q
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G770F
PRODUCT_MANUFACTURER := samsung

# Use the latest approved GMS identifiers
PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="r5qnaxx-user 13 TP1A.220624.014 G770FXXS9HXA1 release-keys" \
    PRODUCT_DEVICE=r5q \
    PRODUCT_NAME=r5qnaxx \
    TARGET_BOOTLOADER_BOARD_NAME=sm8150 \


BUILD_FINGERPRINT := "samsung/r5qnaxx/r5q:13/TP1A.220624.014/G770FXXS9HXA1:user/release-keys"
