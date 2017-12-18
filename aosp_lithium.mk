# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from lithium device
$(call inherit-product, device/xiaomi/lithium/device.mk)

# Inherit some common AOSP stuff.
$(call inherit-product, vendor/aosp/common.mk)

PRODUCT_NAME := aosp_lithium
PRODUCT_DEVICE := lithium
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI MIX
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="lithium" \
    PRODUCT_NAME="lithium" \
    BUILD_FINGERPRINT="Xiaomi/lithium/lithium:6.0.1/MXB48T/V8.2.4.0.MAHMIDL:user/release-keys" \
    PRIVATE_BUILD_DESC="lithium-user 6.0.1 MXB48T V8.2.4.0.MAHMIDL release-keys"
