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

# Network
# Define default initial receive window size in segments.
PRODUCT_PROPERTY_OVERRIDES += \
	net.tcp.default_init_rwnd=60

# sdcardfs
PRODUCT_PROPERTY_OVERRIDES += \
	ro.sys.sdcardfs=true
