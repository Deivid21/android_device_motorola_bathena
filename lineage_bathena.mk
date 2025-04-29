#
# SPDX-FileCopyrightText: 2022-2024 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device
$(call inherit-product, device/motorola/bathena/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_bathena
PRODUCT_DEVICE := bathena
PRODUCT_BRAND := motorola
PRODUCT_MODEL := Motorola Defy
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="bathena_retail-user 11 RZD31.31 bc31c release-keys" \
    BuildFingerprint=motorola/bathena_retail/bathena:11/RZD31.31/bc31c:user/release-keys \
    DeviceProduct=bathena_retail
