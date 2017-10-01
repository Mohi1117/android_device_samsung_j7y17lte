#Inherit device configuration
$(call inherit-product, device/samsung/j7y17lte/device.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_j7y17lte
BOARD_VENDOR := samsung
PRODUCT_DEVICE := j7y17lte
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

TARGET_VENDOR_PRODUCT_NAME := j7y17ltextc
TARGET_VENDOR_DEVICE_NAME := j7y17lte
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=j7y17lte PRODUCT_NAME=j7y17ltextc

## Use the latest approved GMS identifiers unless running a signed build
ifneq ($(SIGN_BUILD),true)
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=samsung/j7y17ltextc/j7y17lte:7.0/NRD90M/J730GMDXU1AQF9:user/release-keys \
    PRIVATE_BUILD_DESC="j7y17ltextc-user 7.0 NRD90M J730GMDXU1AQF9 release-keys"
endif
