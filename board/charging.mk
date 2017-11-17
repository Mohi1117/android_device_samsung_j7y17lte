####################
# Charging		   #
####################

WITH_CM_CHARGER := true
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_SHOW_PERCENTAGE := true
BACKLIGHT_PATH := /sys/devices/14800000.dsim/backlight/panel/brightness
CHARGING_ENABLED_PATH := /sys/class/power_supply/battery/batt_lp_charging
BOARD_GLOBAL_CFLAGS += -DBATTERY_REAL_INFO
