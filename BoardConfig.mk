USE_CAMERA_STUB := true

TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := universal7870

# Platform
TARGET_SOC := exynos7870
TARGET_BOARD_PLATFORM := exynos5
TARGET_BOARD_PLATFORM_GPU := mali-t830mp2

# Flags
#TARGET_GLOBAL_CFLAGS +=
#TARGET_GLOBAL_CPPFLAGS +=
#COMMON_GLOBAL_CFLAGS +=

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_SMP := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic

# kernel
#BOARD_KERNEL_CMDLINE := 
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
#TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --board SRPQA18A000KU
#TARGET_PREBUILT_KERNEL := device/samsung/j7y17lte/kernel
#TARGET_PREBUILT_DTB := device/samsung/j7y17lte/dt.img
TARGET_KERNEL_CONFIG := j7y17lte_eur_openm_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/j7y17lte
#TARGET_USES_UNCOMPRESSED_KERNEL := true
#BOARD_KERNEL_SEPERATED_DT := true
TARGET_CUSTOM_DTBTOOL := dtbhtoolExynos

# Partition info
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x2000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x2600000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3064008000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 56756540
BOARD_CACHEIMAGE_PARTITION_SIZE := 197472
BOARD_FLASH_BLOCK_SIZE := 131072

# Use this flag if the board has a ext4 partition larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_SUPPRESS_SECURE_ERASE := true

#################################HALS
#audio
PRODUCT_PACKAGES += \
audio_policy.default \
audio.a2dp.default \
audio.playback_record.default \
audio.primary.default \
audio.primary.goldfish \
audio.primary.universal7870 \
audio.r_submix.default \
audio.usb.default

#bluetooth
PRODUCT_PACKAGES += \
bluetooth.default

#camera
PRODUCT_PACKAGES += \
camera.goldfish.jpeg \
camera.goldfish \
camera.ranchu.jpeg \
camera.ranchu \
camera.universal7870

#fingerprint
PRODUCT_PACKAGES += \
fingerprint.default \
fingerprint.goldfish \
fingerprint.ranchu

#gatekeeper
PRODUCT_PACKAGES += \
gatekeeper.exynos7870

#gps
PRODUCT_PACKAGES += \
gps.default \
gps.goldfish \
gps.ranchu

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
