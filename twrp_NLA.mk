#
# Copyright (C) 2023 Team Win Recovery Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from msm8998 common makefiles
$(call inherit-product, device/nokia/msm8998-common/msm8998-common.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := NLA
PRODUCT_NAME := twrp_NLA
PRODUCT_BRAND := Nokia
PRODUCT_MODEL := Nokia 8 (Repartitioned)
PRODUCT_MANUFACTURER := HMD Global

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="NB1_00WW_FIH-user 9 PPR1.180610.011 00WW_5_16A release-keys"

BUILD_FINGERPRINT := Nokia/NB1_00WW_FIH/NB1:9/PPR1.180610.011/00WW_5_16A:user/release-keys
