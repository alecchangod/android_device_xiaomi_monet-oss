#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/monet

BUILD_BROKEN_DUP_RULES := true

# A/B
TARGET_IS_VAB := false

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := lito
TARGET_BOARD_PLATFORM := lito

# Display
TARGET_SCREEN_DENSITY := 440

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):init_xiaomi_monet
TARGET_RECOVERY_DEVICE_MODULES := init_xiaomi_monet

# Kernel
KERNEL_SUPPORTS_LLVM_TOOLS := true
TARGET_KERNEL_CONFIG := monet_defconfig
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-gnu-

# SoC
PROCESSOR_MODEL := SM7250

# UDFPS
TARGET_HAS_UDFPS := true

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Inherit from sm8250-common
include device/xiaomi/sm8250-common/BoardConfigCommon.mk

# Inherit from the proprietary version
include vendor/xiaomi/monet/BoardConfigVendor.mk
