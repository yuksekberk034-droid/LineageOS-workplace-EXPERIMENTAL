#
# Copyright (C) 2026 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/tcl/8492A

# Enable A/B Virtual A/B partitioning support
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# A/B Post-install config
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

# Boot control HAL (MediaTek MT6761 / MT8766)
PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-service \
    bootctrl.mt6761

#PRODUCT_STATIC_BOOT_CONTROL_HAL := \
    #bootctrl.mt6761 \
    #libgptutils \
    #libz \
    #libcutils

# Update engine components for OTA updates
PRODUCT_PACKAGES += \
    otapreopt_script \
    cppreopts.sh \
    update_engine \
    update_verifier \
    update_engine_sideload

# Dynamic Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true
