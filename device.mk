#inherit exynos5 hals
include hardware/samsung/slsi/exynos5/exynos5.mk
LOCAL_PATH := device/samsung/j7y17lte

#overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

#custom dtb
#PRODUCT_PACKAGES += \
#    dtbhtoolExynos

#offmode charger
PRODUCT_PACKAGES += \
    charger_res_images

#display density properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=420

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

#hwui build properties
ro.hwui.texture_cache_size=50
ro.hwui.layer_cache_size=34
ro.hwui.path_cache_size=10
ro.hwui.texture_cache_flushrate=0.4
ro.hwui.shape_cache_size=4
ro.hwui.gradient_cache_size=2
ro.hwui.drop_shadow_cache_size=6
ro.hwui.r_buffer_cache_size=4
ro.hwui.text_small_cache_width=1024
ro.hwui.text_small_cache_height=1024
ro.hwui.text_large_cache_width=2048
ro.hwui.text_large_cache_height=1024

#dalvik heap properties
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

# Recovery
TARGET_RECOVERY_FSTAB := device/samsung/j7y17lte/rootdir/fstab.samsungexynos7870

