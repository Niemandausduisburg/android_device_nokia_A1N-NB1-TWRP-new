################### ############################################
# MANDATORY FLAGS # These flags HAVE TO be set/changed by you! #
################### ############################################

# Device codename
# Default (if not set): N/A
SHRP_DEVICE_CODE := NB1

# Path of your SHRP device tree
# Replace <device-brand> with the device brand name
# (SHRP_DEVICE_CODE will expand to the above variable so check if that is correct)
SHRP_PATH := device/nokia/$(SHRP_DEVICE_CODE)

# Maintainer name
# Default (if not set): N/A
SHRP_MAINTAINER := Niemandausduisburg

# Recovery Type (for "About" section only)
# Default (if not set): N/A
SHRP_REC_TYPE := Treble

# Device Type (for "About" section only)
# Default (if not set): N/A
SHRP_DEVICE_TYPE := A/B

# Your device's recovery path, dont use blindly
# No default
SHRP_REC := /dev/block/bootdevice/by-name/boot

################### ################################################################################
# IMPORTANT FLAGS # These are usually good to check - at least if the defaults are what you expect #
################### ################################################################################

# Emergency DownLoad mode (0 = no EDL mode, 1 = EDL mode available)
# Default (if not set): 0
SHRP_EDL_MODE := 1

# internal storage path
# Default (if not set): /sdcard
SHRP_INTERNAL := /sdcard

# If your device has an external sdcard
# Default (if not set): /
SHRP_EXTERNAL := /external_sd

# USB OTG path
# Default (if not set): /
SHRP_OTG := /usb_otg

# Flashlight: (0 = disable, 1 = enable)
# Default (if not set): 0
SHRP_FLASH := 0

################## #########################################################################
# OPTIONAL FLAGS # Stuff which highly depends on your device and / or personal preferences #
################## #########################################################################

# Use this flag only if your device is A/B.
# Default (if not set) is no A/B device
# Set this variable when true ONLY (do not use "false" or similiar)
SHRP_AB := true

# SHRP padding flag (for rounded corner devices only)
# You have to change these values according to your device's roundness.
# SHRP_STATUSBAR_RIGHT_PADDING := <1-XXX>
# Default (for LEFT): 20
# SHRP_STATUSBAR_LEFT_PADDING := <1-XXX>

# For notch devices
# Default (if not set) is no notch
# Set this variable when true ONLY (do not use "false" or similiar)
SHRP_NOTCH := false

# SHRP Express, enables on-the-fly theme patching (also persistent) + persistent lock
# Default (if not set) is not using Express
# Set this variable when true ONLY (do not use "false" or similiar)
SHRP_EXPRESS := true

# SHRP Express use Data save shrp files inside /data instead of /system
# Note - SHRP_EXPRESS must be true to use this flag otherwise it won't work.
# Default (if not set) will use /system if SHRP_EXPRESS true otherwise will use legacy method of patching
# Set this variable when true ONLY (do not use "false" or similiar)
SHRP_EXPRESS_USE_DATA := true

# SHRP Dark mode, use this flag to have dark theme set by default
# Default (if not set) is not using DARK mode
# Set this variable when true ONLY (do not use "false" or similiar)
SHRP_DARK := false

# custom led paths for flashlight
# find yours then replace the examples here
# SHRP_CUSTOM_FLASHLIGHT := true
# SHRP_FONP_1 := /sys/class/leds/led:torch_0/brightness
# SHRP_FONP_2 := /sys/class/leds/led:torch_1/brightness
# SHRP_FONP_3 := /sys/class/leds/led:switch/brightness

# Max brightness of flashlight
# you can also check the above led paths in Android when you turn on flashlight
# SHRP_FLASH_MAX_BRIGHTNESS := 200

# Force mount system in /system despite SAR policy
# useful for maintaining backwards compatibility and/or Samsung devices
# Default (if not set) is to follow the SAR policy
# Set this variable when true ONLY (do not use "false" or similiar)
# SHRP_NO_SAR_AUTOMOUNT := true

# Do not include the SHRP theming system
# Useful to save space for devices with a smaller recovery partition
# Default (if not set) is full theming support
# Set this variable when true ONLY (do not use "false" or similiar)
SHRP_LITE := true

################################## ##############################################
# SHRP DEFAULT ADDONS - OPTIONAL # Default SHRP addon behavior - fully optional #
################################## ##############################################

# SHRP comes with a set of default addons.
# This section allows to disable some or all of them, e.g. to save a little space
# or when a device does not support / need them.

#####
# DEFAULT behavior if neither
# - SHRP_SKIP_DEFAULT_ADDON_X nor
# - INC_IN_REC_ADDON_X
# are set:
# the addon will be added to the build and saved into the internal storage
# on flashing (i.e: $(SHRP_INTERNAL)/SHRP/addons)
#
# SHRP_SKIP_DEFAULT_ADDON_X := true
# --> will not add this addon
#
# INC_IN_REC_ADDON_X := true
# --> will add this addon & store it within the recovery ramdisk (i.e. NOT in the internal storage!)
#
# If SHRP_SKIP_DEFAULT_ADDON_X is set INC_IN_REC_ADDON_X will be ignored!
#
######

# Addon - Substratum Overlay (OMS -Normal- disabler)
# Default (if not set) is not skipping this addon (i.e. add it)
# Ensure you understood the above note on the default behavior!
# SHRP_SKIP_DEFAULT_ADDON_1 := true
# Default (if not set) is NOT adding it to the ramdisk but internal storage.
# To store this addon into the recovery ramdisk instead set to "true" here.
# Ensure you understood the above note on the default behavior!
# INC_IN_REC_ADDON_1 := true

# Addon - Substratum Overlay (OMS -legacy- disabler)
# Default (if not set) is not skipping this addon (i.e. add it)
# Ensure you understood the above note on the default behavior!
# SHRP_SKIP_DEFAULT_ADDON_2 := true
# Default (if not set) is NOT adding it to the ramdisk but internal storage.
# To store this addon into the recovery ramdisk instead set to "true" here.
# Ensure you understood the above note on the default behavior!
# INC_IN_REC_ADDON_2 := true

# Addon - Clear Fingerprint (remove fingerprint lock from system)
# Default (if not set) is not skipping this addon (i.e. add it)
# Ensure you understood the above note on the default behavior!
# SHRP_SKIP_DEFAULT_ADDON_3 := true
# Default (if not set) is NOT adding it to the ramdisk but internal storage.
# To store this addon into the recovery ramdisk instead set to "true" here.
# Ensure you understood the above note on the default behavior!
# INC_IN_REC_ADDON_3 := true

# Addon - Force Encryption (remove force encryption from your device)
# Default (if not set) is not skipping this addon (i.e. add it)
# Ensure you understood the above note on the default behavior!
# SHRP_SKIP_DEFAULT_ADDON_4 := true
# Default (if not set) is NOT adding it to the ramdisk but internal storage.
# To store this addon into the recovery ramdisk instead set to "true" here.
# Ensure you understood the above note on the default behavior!
# INC_IN_REC_ADDON_4 := true

# Default (if not set) is NOT adding it to the ramdisk but internal storage.
# To store magisk zip into the recovery ramdisk instead set to "true" here.
# Ensure you understood the above note on the default behavior!
# INC_IN_REC_MAGISK := true

# Default (if not set) will show magisk root and unroot option inside the recovery.
# To hide the prebuilt magisk flash option from recovery, set value to "true".
# Ensure you understood the above note on the default behavior!
# SHRP_EXCLUDE_MAGISK_FLASH := true

