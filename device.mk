LOCAL_PATH := device/samsung/j7y17lte

#overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

#custom dtb
PRODUCT_PACKAGES += \
    dtbhtoolExynos

#offmode charger
PRODUCT_PACKAGES += \
    charger_res_images
