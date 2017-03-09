## Specify phone tech before including full_phone
#$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := PrimeL

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/highscreen/primel/device_primel.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := primel
PRODUCT_NAME := lineage_primel
PRODUCT_BRAND := Highscreen
PRODUCT_MODEL := PrimeL
PRODUCT_MANUFACTURER := Highscreen
