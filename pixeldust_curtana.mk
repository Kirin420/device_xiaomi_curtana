#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Inherit from curtana device
$(call inherit-product, device/xiaomi/curtana/device.mk)

# Inherit some common Pixel Dust stuff.
TARGET_BOOT_ANIMATION_RES := 1080
include vendor/pixeldust/configs/pixeldust_phone.mk

# Inherit optional pd stuff
include vendor/pixeldust/configs/system_optional.mk

# Release naming stuff
PRODUCT_RELEASE_NAME := Redmi Note 9S
export TARGET_DEVICE := curtana

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := pixeldust_curtana
PRODUCT_DEVICE := curtana
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 9S
PRODUCT_MANUFACTURER := Redmi

BUILD_FINGERPRINT := "Redmi/curtana_global/curtana:10/QKQ1.191215.002/V11.0.9.0.QJWMIXM:user/release-keys"

# add my name lol
PRODUCT_PROPERTY_OVERRIDES += \
    ro.pixeldust.maintainer="Kirin420" \
