## (2) Also get non-open-source specific aspects if available
$(call inherit-product-if-exists, vendor/samsung/zerofltespr/zerofltespr-vendor.mk)

PRODUCT_RUNTIMES := runtime_libart_default

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, device/samsung/zerofltespr/device.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)


## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := zerofltespr
PRODUCT_NAME := full_zerofltespr
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G920P
PRODUCT_MANUFACTURER := samsung
# Release name
PRODUCT_RELEASE_NAME := zerofltespr


LOCAL_PATH := device/samsung/zerofltespr

## device overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Carrier init
PRODUCT_PACKAGES += \
    init.carrier.rc

# cpboot daemon
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ril/sbin/cbd:root/sbin/cbd

# Inherit from zero-common
$(call inherit-product, device/samsung/zero-common/zero-common.mk)
