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


DEVICE_PATH := device/samsung/r5q

# inherit from common tree
-include device/samsung/sm8150-common/BoardConfigCommon.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := r5q

# Board
TARGET_BOARD_NAME := SRPSG08A002

# FOD
TARGET_SURFACEFLINGER_UDFPS_LIB := //$(DEVICE_PATH):libudfps_extension.r5q
TARGET_USES_FOD_ZPOS := true

# Kernel
TARGET_KERNEL_CONFIG := r5q_eur_open_defconfig

# NFC
TARGET_USES_NQ_NFC := true

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Security patch level
VENDOR_SECURITY_PATCH := 2024-02-01

# Sepolicy
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor

# inherit from the proprietary version
-include vendor/samsung/r5q/BoardConfigVendor.mk
