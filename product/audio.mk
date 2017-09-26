DEVICE_PATH := device/samsung/j7y17lte

# Configs
PRODUCT_COPY_FILES += \
	$(DEVICE_PATH)/configs/audio/audio_policy.conf:system/etc/audio_policy.conf \
	$(DEVICE_PATH)/configs/audio/mixer_paths.xml:system/etc/mixer_paths.xml

# Packages
PRODUCT_PACKAGES += \
	audio_policy.default  \
	audio.a2dp.default \
	audio.playback_record.default \
	audio.primary.default \
	audio.primary.goldfish.default \
	audio.usb.default \
	audio.r_submix.default \
	audio.primary.universal7870

# Permissions
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
	af.fast_track_multiplier=1 \
	audio_hal.force_voice_config=wide
