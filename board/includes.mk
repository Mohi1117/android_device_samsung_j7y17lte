####################
# Includes		   #
####################
DEVICE_PATH := device/samsung/j7y17lte

# Hardware config include
TARGET_SPECIFIC_HEADER_PATH := $(DEVICE_PATH)/include

# CM Hardware
BOARD_HARDWARE_CLASS += hardware/samsung/cmhw

# Properties
TARGET_SYSTEM_PROP := $(DEVICE_PATH)/system.prop

# LED path
BACKLIGHT_PATH := "/sys/class/backlight/panel/brightness"

# SELinux
BOARD_SEPOLICY_DIRS := $(DEVICE_PATH)/sepolicy

# Seccomp filters
BOARD_SECCOMP_POLICY += $(DEVICE_PATH)/seccomp
