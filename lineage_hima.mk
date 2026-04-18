#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from hima device
$(call inherit-product, device/oppo/hima/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_hima
PRODUCT_DEVICE := hima
PRODUCT_MANUFACTURER := OPPO
PRODUCT_BRAND := OPPO
PRODUCT_MODEL := CPH2207

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="CPH2207EEA-user 13 TP1A.220905.001 R.2053856-3bc5-6edb22 release-keys" \
    BuildFingerprint=OPPO/CPH2207EEA/OP4F0BL1:13/TP1A.220905.001/R.2053856-3bc5-6edb22:user/release-keys \
    DeviceName=OP4F0BL1 \
    DeviceProduct=CPH2207 \
    SystemDevice=OP4F0BL1 \
    SystemName=CPH2207
