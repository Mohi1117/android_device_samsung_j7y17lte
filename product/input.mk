DEVICE_PATH := device/samsung/j7y17lte

# Configs
PRODUCT_COPY_FILES += \
	$(DEVICE_PATH)/configs/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
	$(DEVICE_PATH)/configs/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \
	$(DEVICE_PATH)/configs/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
	$(DEVICE_PATH)/configs/idc/AVRCP.idc:system/usr/idc/AVRCP.idc \
	$(DEVICE_PATH)/configs/idc/qwerty.idc:system/usr/idc/qwerty.idc \
	$(DEVICE_PATH)/configs/idc/qwerty2.idc:system/usr/idc/qwerty2.idc

# Permissions
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml
