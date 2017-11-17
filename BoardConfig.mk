#assert
TARGET_OTA_ASSERT_DEVICE := j7y17lte,j7y17ltem,j7y17ltextc

DEVICE_PATH := device/samsung/j7y17lte

# Inherit board specific defines
-include $(DEVICE_PATH)/board/*.mk

# Inherit from the proprietary version
-include vendor/samsung/j7y17lte/BoardConfigVendor.mk

# Audio HAL variant
TARGET_AUDIOHAL_VARIANT := samsung

# Fonts
EXTENDED_FONT_FOOTPRINT := true

# Flags
#TARGET_GLOBAL_CFLAGS +=
#TARGET_GLOBAL_CPPFLAGS +=
#COMMON_GLOBAL_CFLAGS +=

#################################HALS
#hwcomposer
PRODUCT_PACKAGES += \
	hwcomposer.exynos5

#keystore
BOARD_USES_TRUST_KEYMASTER := true

#time
PRODUCT_PACKAGES += \
	local_time.default

#memtrack
PRODUCT_PACKAGES += \
	memtrack.exynos5

# Samsung HALs
TARGET_AUDIOHAL_VARIANT := samsung
TARGET_POWERHAL_VARIANT := samsung
TARGET_SEC_FP_HAL_VARIANT := bauth

#power
#-include hardware/samsung/power/Android.mk
#hal
PRODUCT_PACKAGES += \
	power.universal7870

#lights
PRODUCT_PACKAGES += \
        lights.universal7870

# Init
TARGET_INIT_VENDOR_LIB := libinit_j7y17lte
