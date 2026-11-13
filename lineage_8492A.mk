#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from Freyr_10_1_WiFi device
$(call inherit-product, device/tcl/Freyr_10_1_WiFi/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_DEVICE := Freyr_10_1_WiFi
PRODUCT_NAME := lineage_8492A
PRODUCT_BRAND := TCL
PRODUCT_MODEL := 8492A
PRODUCT_MANUFACTURER := tcl

PRODUCT_GMS_CLIENTID_BASE := android-tcl

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="sys_mssi_t_64_cn-user 13 TP1A.220624.014 KZEB release-keys" \
    BuildFingerprint=TCL/8492A_TR/Freyr_10_1_WiFi:13/TP1A.220624.014/KZEB:user/release-keys
