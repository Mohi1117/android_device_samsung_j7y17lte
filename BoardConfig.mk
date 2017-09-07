USE_CAMERA_STUB := true

TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := universal7870

# Platform
TARGET_SOC := exynos7870
TARGET_BOARD_PLATFORM := exynos5
TARGET_SLSI_VARIANT := cm
TARGET_BOARD_PLATFORM_GPU := mali-t830mp2

# Flags
#TARGET_GLOBAL_CFLAGS +=
#TARGET_GLOBAL_CPPFLAGS +=
#COMMON_GLOBAL_CFLAGS +=

#################################HALS
#gatekeeper
PRODUCT_PACKAGES += \
gatekeeper.exynos7870

#gralloc
PRODUCT_PACKAGES += \
gralloc.default \
gralloc.exynos5

#hwcomposer
PRODUCT_PACKAGES += \
hwcomposer.exynos5

#keystore
PRODUCT_PACKAGES += \
keystore.default \
keystore.exynos7870

#lights
PRODUCT_PACKAGES += \
lights.goldfish

#time
PRODUCT_PACKAGES += \
local_time.default

#memtrack
PRODUCT_PACKAGES += \
memtrack.exynos5.so

#nfc
PRODUCT_PACKAGES += \
nfc_nci.universal7870.so

#power
PRODUCT_PACKAGES += \
power.default \
power.exynos5 \
power.goldfish

#sensors
PRODUCT_PACKAGES += \
sensors.goldfish \
sensors.ranchu \
sensors.universal7870

#vibrator
PRODUCT_PACKAGES += \
vibrator.default \
vibrator.goldfish
