DEVICE_PATH := device/samsung/j7y17lte

# Configs
PRODUCT_COPY_FILES += \
	$(DEVICE_PATH)/configs/gps/gps.conf:system/etc/gps.conf \
	$(DEVICE_PATH)/configs/gps/gps.cfg:system/etc/gps.cfg
#gps
PRODUCT_PACKAGES += \
	gps.default \
	gps.goldfish \
	gps.ranchu

# Init Resources
PRODUCT_PACKAGES += \
	init.gps.rc

# Permissions
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml
