#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common SparkOS stuff.
$(call inherit-product, vendor/spark/config/common_full_phone.mk)

# Inherit from monet device
$(call inherit-product, device/xiaomi/monet/device.mk)

PRODUCT_NAME := spark_monet
PRODUCT_DEVICE := monet
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := M2002J9G

TARGET_USES_BLUR := true
TARGET_FACE_UNLOCK_SUPPORTED := true
SPARK_BUILD_TYPE := UNOFFICIAL
TARGET_BOOT_ANIMATION_RES := 1080
EXTRA_UDFPS_ANIMATIONS := true
TARGET_USES_DOLBY ?= true

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="monet-user 12 SKQ1.211006.001 V13.0.2.0.SJIEUXM release-keys"

BUILD_FINGERPRINT := Xiaomi/monet_eea/monet:12/SKQ1.211006.001/V13.0.2.0.SJIEUXM:user/release-keys

# Inherit from dolby
ifeq ($(TARGET_USES_DOLBY),true)
$(call inherit-product, vendor/sony/dolby/sony-dolby-vendor.mk)
endif

# Inherit from Leica camera
$(call inherit-product, vendor/xiaomi/monet-leicacamera/leica-camera-vendor.mk)
