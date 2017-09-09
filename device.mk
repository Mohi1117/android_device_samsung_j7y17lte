#overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

LOCAL_PATH := device/samsung/j7y17lte

#rootdir
PRODUCT_PACKAGES += \
	fstab.samsungexynos7870 \
	init.samsung.rc \
	init.samsungexynos7870.rc \
	init.samsungexynos7870.usb.rc \
	ueventd.samsungexynos7870.rc

#permissions
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
	frameworks/native/data/etc/android.software.freeform_window_management.xml:system/etc/permissions/android.software.freeform_window_management.xml \
	frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
	frameworks/native/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
	frameworks/native/data/etc/com.nxp.mifare.xml:system/etc/permissions/com.nxp.mifare.xml \
	frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

#graphics
# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

#more packages
PRODUCT_PACKAGES += \
	libsamsung_symbols \
	SamsungServiceMode \
	Torch

#custom dtb
#PRODUCT_PACKAGES += \
#    dtbhtoolExynos

#offmode charger
PRODUCT_PACKAGES += \
	charger_res_images \
	cm_charger_res_images

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

# Inherit board specific products
-include $(LOCAL_PATH)/product/*.mk

# System properties
-include $(LOCAL_PATH)/system_prop.mk

# call Samsung LSI board support package
$(call inherit-product, hardware/samsung_slsi-cm/exynos5/exynos5.mk)
$(call inherit-product, hardware/samsung_slsi-cm/exynos7420/exynos7420.mk)

# call the proprietary setup
$(call inherit-product, vendor/samsung/j7y17lte/j7y17lte-vendor.mk)
