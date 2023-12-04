#
# Copyright (C) 2023 Team Win Recovery Project
#
# Common device makefiles for Nokia MSM8998 devices
#
# SPDX-License-Identifier: Apache-2.0
#

# Shipping level
PRODUCT_SHIPPING_API_LEVEL := 27

# Inherit from our custom product configuration
$(call inherit-product, vendor/twrp/config/common.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit AOSP product makefiles
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# A/B support
AB_OTA_UPDATER := true

# A/B updater updatable partitions list. Keep in sync with the partition list
# with "_a" and "_b" variants in the device. Note that the vendor can add more
# more partitions to this list for the bootloader and radio.
AB_OTA_PARTITIONS += \
    boot \
    system \
    vendor

# A/B support
PRODUCT_PACKAGES += \
    otapreopt_script \
    cppreopts.sh \
    update_engine \
    update_engine_sideload \
    update_verifier

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

# Boot control HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl.recovery \
    bootctrl.msm8998 \
    bootctrl.msm8998.recovery

PRODUCT_PACKAGES_DEBUG += \
    bootctl \
    update_engine_client

# Debug
PRODUCT_PACKAGES += \
	crash_dump \
	libprocinfo.recovery

# Set these flag to true to build for Retrofit Dynamic Partition devices.
PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_RETROFIT_DYNAMIC_PARTITIONS := true

ifeq ($(PRODUCT_USE_DYNAMIC_PARTITIONS), true)
# fastbootd
PRODUCT_PACKAGES += \
	fastbootd
endif

# Product platform
PRODUCT_PLATFORM := msm8998

# qcom standard decryption
PRODUCT_PACKAGES += \
	qcom_decrypt \
	qcom_decrypt_fbe

PRODUCT_PROPERTY_OVERRIDES += \
	ro.hardware.keystore=msm8998 \
	ro.hardware.gatekeeper=msm8998

# tzdata
PRODUCT_PACKAGES += \
    tzdata_twrp
