#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from vendor blobs
$(call inherit-product, vendor/xiaomi/monet/monet-vendor.mk)

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Audio configs
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/audio/,$(TARGET_COPY_OUT_VENDOR)/etc)

# Board
PRODUCT_USES_QCOM_HARDWARE := true
PRODUCT_BOARD_PLATFORM := sm7250

# Screen density
TARGET_SCREEN_DENSITY := 440

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

PRODUCT_SHIPPING_API_LEVEL := 30

# Camera
PRODUCT_PACKAGES += \
    libMegviiFacepp-0.5.2 \
    libmegface

# Fingerprint
TARGET_HAS_UDFPS := true

# FM
TARGET_HAS_FM := true

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

PRODUCT_PACKAGES += \
    ApertureOverlayMonet \
    FrameworksResOverlayMonet \
    SettingsLibOverlayMonet \
    SettingsOverlayMonet \
    SettingsProviderOverlayMonet \
    SimpleDeviceConfigOverlayMonet \
    SystemUIOverlayMonet

PRODUCT_PACKAGES += \
    XtendedFrameworksResCommon

# UDFPS animations
EXTRA_UDFPS_ANIMATIONS := true

# SoC
PROCESSOR_MODEL := SM7250

# Touch
SUPPORT_HIGHTOUCHPOLLINGRATE := false

# Inherit from sm8250-common
$(call inherit-product, device/xiaomi/sm8250-common/common.mk)
