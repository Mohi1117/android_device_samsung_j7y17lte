# Packages
PRODUCT_PACKAGES += \
	libion_exynos \
	libfimg \
	libion \
	gralloc.exynos5 \
	gralloc.default

# Permissions
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.vulkan.level-0.xml:system/etc/permissions/android.hardware.vulkan.level.xml \
	frameworks/native/data/etc/android.hardware.vulkan.version-1_0_3.xml:system/etc/permissions/android.hardware.vulkan.version.xml

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
	debug.hwc.force_gpu=1 \
	ro.bq.gpu_to_cpu_unsupported=1 \
	ro.opengles.version=196610 \
	ro.sf.lcd_density=480

# Properties - HWC - not used on cm/aosp
PRODUCT_PROPERTY_OVERRIDES += \
	debug.hwc.winupdate=1 \
	debug.hwc.otf=1
