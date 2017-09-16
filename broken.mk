$(call inherit-product, device/lge/h910/full_h910.mk)

# Inherit some common broken stuff.
$(call inherit-product, vendor/broken/config/common_full_phone.mk)

# Overlays (inherit after vendor/broken to ensure we override it)
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_NAME := broken_h910

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="v20" \
    PRODUCT_NAME="elsa_att_us" \
    BUILD_FINGERPRINT="lge/elsa_att_us/elsa:7.1.2/NJH47F/162611117c45c:user/release-keys" \
    PRIVATE_BUILD_DESC="elsa_att_us-user 7.1.2 NJH47F 162611117c45c release-keys"
