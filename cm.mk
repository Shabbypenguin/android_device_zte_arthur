## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)


# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, device/common/gps/gps_us_supl.mk)

-include vendor/cm/config/common_versions.mk

# Inherit device configuration
$(call inherit-product, device/zte/arthur/device_arthur.mk)

PRODUCT_NAME := cm_arthur
PRODUCT_BRAND := BoostMobile
PRODUCT_DEVICE := arthur
PRODUCT_MODEL := N860
PRODUCT_MANUFACTURER := ZTE

# Release name and versioning
PRODUCT_RELEASE_NAME := arthur




