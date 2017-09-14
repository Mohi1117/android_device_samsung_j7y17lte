# kernel
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_CUSTOM_BOOTIMG_MK := hardware/samsung/mkbootimg.mk
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --board SRPQA18A000KU
TARGET_KERNEL_CONFIG := j7y17lte_eur_openm_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/j7y17lte
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
BOARD_KERNEL_SEPERATED_DT := true
TARGET_CUSTOM_DTBTOOL := dtbhtoolExynos

TARGET_KERNEL_ARCH := arm64
ifeq ($(FORCE_32_BIT),true)
TARGET_KERNEL_HEADER_ARCH := arm
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/$(HOST_OS)-x86/aarch64/aarch64-linux-android-4.9/bin
endif
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_IMAGE_NAME := Image
BOARD_KERNEL_PAGESIZE := 2048
ifneq ($(FORCE_32_BIT),true)
TARGET_USES_UNCOMPRESSED_KERNEL := true
endif

# CPUSETS
ENABLE_CPUSETS := true
