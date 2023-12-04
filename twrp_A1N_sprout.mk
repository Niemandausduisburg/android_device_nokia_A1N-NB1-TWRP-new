#
# Copyright (C) 2023 Team Win Recovery Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from msm8998 common makefiles
$(call inherit-product, device/nokia/msm8998-common/msm8998-common.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := A1N_sprout
PRODUCT_NAME := twrp_A1N_sprout
PRODUCT_BRAND := Nokia
PRODUCT_MODEL := Nokia 8 Sirocco
PRODUCT_MANUFACTURER := HMD Global

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="A1N_00WW_FIH-user-10-QKQ1.190828.002-00WW_5_14L-release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Nokia/A1N_00WW_FIH/A1N:10/QKQ1.190828.002/00WW_5_14L:user/release-keys
