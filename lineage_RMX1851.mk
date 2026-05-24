#
# Copyright (C) 2021-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common LunarisAOSP stuff
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_ENABLE_BLUR :=false
TARGET_ENABLE_BLUR := false
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from RMX1851 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Lunaris-ify!
WITH_BCR := true
USE_REALITY_ENGINE := true
TARGET_OPTIMIZED_DEXOPT := true

PRODUCT_BRAND := realme
PRODUCT_DEVICE := RMX1851
PRODUCT_MANUFACTURER := realme
PRODUCT_NAME := lineage_RMX1851
PRODUCT_MODEL := RMX1851

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="RMX1851-user 11 RKQ1.201217.002 1623376276806 release-keys" \
    BuildFingerprint=realme/RMX1851/RMX1851:11/RKQ1.201217.002/1623376276806:user/release-keys \
    DeviceName=RMX1851 \
    DeviceProduct=RMX1851 \
    SystemDevice=RMX1851 \
    SystemName=RMX1851
