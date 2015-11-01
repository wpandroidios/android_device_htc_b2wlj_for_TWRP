## Specify phone tech before including full_phone
$(call inherit-product, vendor/omni/config/cdma.mk)

# Inherit device configuration
$(call inherit-product, device/htc/b2wlj/full_b2wlj.mk)
# Release name
PRODUCT_RELEASE_NAME := b2wlj

# Inherit some common DU stuff.
$(call inherit-product, vendor/omni/config/common.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := b2wlj
PRODUCT_NAME := omni_b2wlj
PRODUCT_BRAND := htc
PRODUCT_MODEL := b2wlj
PRODUCT_MANUFACTURER := htc
