# Release name
PRODUCT_RELEASE_NAME := cm_arthur

## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/cdma.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/zte/arthur/arthur.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := arthur
PRODUCT_NAME := cm_arthur
PRODUCT_MANUFACTURER := ZTE

# Root
PRODUCT_COPY_FILES += \
    device/zte/arthur/root/init.arthur.rc:/root/init.arthur.rc \
    device/zte/arthur/root/init.qcom.rc:/root/init.qcom.rc \
    device/zte/arthur/root/init.qcom.sh:/root/init.qcom.sh \
    device/zte/arthur/root/init.rc:/root/init.rc \
    device/zte/arthur/root/fstab.arthur:root/fstab.arthur \
    device/zte/arthur/root/ueventd.rc:/root/ueventd.rc \
    device/zte/arthur/root/sbin/diagftmtest:/root/sbin/diagftmtest \
    device/zte/arthur/root/sbin/hci_qcomm_init:/root/sbin/hci_qcomm_init \
    device/zte/arthur/root/sbin/iwmulticall:/root/sbin/iwmulticall \
    device/zte/arthur/root/sbin/iwpriv:/root/sbin/iwpriv \
    device/zte/arthur/root/sbin/ptt_socket_app:/root/sbin/ptt_socket_app \
    device/zte/arthur/root/sbin/rmt_storage:/root/sbin/rmt_storage \
    device/zte/arthur/root/sbin/usbconfig:/root/sbin/usbconfig

