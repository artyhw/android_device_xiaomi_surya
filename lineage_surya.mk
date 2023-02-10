#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from surya device
$(call inherit-product, device/xiaomi/surya/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit some riceDroid stuff.
RICE_MAINTAINER := Kei's
TARGET_SUPPORTS_QUICK_TAP := true
SUSHI_BOOTANIMATION := 1080
TARGET_BUILD_GRAPHENEOS_CAMERA := false
WITH_GMS := true
TARGET_CORE_GMS := true
TARGET_USE_PIXEL_FINGERPRINT := true

PRODUCT_NAME := lineage_surya
PRODUCT_DEVICE := surya
PRODUCT_BRAND := POCO
PRODUCT_MODEL := M2007J20CG
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_SYSTEM_PROPERTIES += \
    ro.product.mod_device=surya_global
