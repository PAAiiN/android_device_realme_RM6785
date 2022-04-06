#
# Copyright (C) 2020 Android Open Source Project
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
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile
$(call inherit-product, device/realme/RM6785/device.mk)

# ARCANA_DEVICE := RM6785 # TARGET_BUILD_GRAPHENEOS_CAMERA := true/false
# ARCANA_MAINTAINER := PAiN

# Inherit some common CherishOS stuff.
# USE_GAPPS=true # TARGET_USES_BLUR := true # USE_LAWNCHAIR := true
# CHERISH_VANILLA := true
# TARGET_SUPPORTS_QUICK_TAP := true
CHERISH_BUILD_TYPE := OFFICIAL
TARGET_BOOT_ANIMATION_RES := 1080
$(call inherit-product, vendor/cherish/config/common_full_phone.mk)
#$(call inherit-product, vendor/aosp/config/common.mk)

# Device identifier. This must come after all inclusions.
#PRODUCT_NAME := aosp_RM6785
PRODUCT_NAME := cherish_RM6785
PRODUCT_DEVICE := RM6785
PRODUCT_BRAND := realme
PRODUCT_MODEL := RM6785
PRODUCT_MANUFACTURER := realme

BUILD_FINGERPRINT := "realme/RMX2001/RMX2001L1:10/QP1A.190711.020/1594211000:user/release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-realme

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.cherish.maintainer=PAiN
