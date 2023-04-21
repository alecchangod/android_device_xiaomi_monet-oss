#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Xtended stuff.
$(call inherit-product, vendor/xtended/config/common_full_phone.mk)

# Inherit from vangogh device
$(call inherit-product, device/xiaomi/vangogh/device.mk)

# MIUI Camera
$(call inherit-product, vendor/xiaomi/camera/products/miuicamera.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := xtended_vangogh
PRODUCT_DEVICE := vangogh
BOARD_VENDOR := Xiaomi
TARGET_VENDOR := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := M2002J9E

TARGET_INCLUDE_PIXEL_CHARGER := true


# Xtended Stuffs
XTENDED_BUILD_MAINTAINER := alecchangod
XTENDED_BUILD_TYPE := UNOFFICIAL
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := true
XTENDED_BUILD_DONATE_URL := https://www.paypal.com/paypalme/Alec174

# Build fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="cheetah-user 13 TQ2A.230305.008.C1 9619669 release-keys"

BUILD_FINGERPRINT := google/cheetah/cheetah:13/TQ2A.230305.008.C1/9619669:user/release-keys
