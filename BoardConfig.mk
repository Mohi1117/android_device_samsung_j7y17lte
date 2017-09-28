#assert
TARGET_OTA_ASSERT_DEVICE := j7y17lte,j7y17ltem,j7y17ltextc

LOCAL_PATH := device/samsung/j7y17lte

# Include path
TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# SELinux
BOARD_SEPOLICY_DIRS := $(LOCAL_PATH)/sepolicy

# SECComp filters
BOARD_SECCOMP_POLICY += $(LOCAL_PATH)/seccomp

# Inherit board specific defines
-include $(LOCAL_PATH)/board/*.mk

# Inherit from the proprietary version
-include vendor/samsung/j7y17lte/BoardConfigVendor.mk

# Platform
BOARD_VENDOR := samsung
TARGET_BOARD_PLATFORM := exynos5
TARGET_SLSI_VARIANT := cm
TARGET_SOC := exynos7870
TARGET_BOOTLOADER_BOARD_NAME := universal7870
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

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

#lights
PRODUCT_PACKAGES += \
	lights.goldfish

#time
PRODUCT_PACKAGES += \
	local_time.default

#memtrack
PRODUCT_PACKAGES += \
	memtrack.exynos5

#power
PRODUCT_PACKAGES += \
	power.default \
	power.exynos5 \
	power.goldfish

#vibrator
PRODUCT_PACKAGES += \
	vibrator.default \
	vibrator.goldfish
