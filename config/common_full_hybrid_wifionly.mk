# Inherit common stuff
$(call inherit-product, vendor/bootleggers/config/common.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/bootleggers/overlay/tablet

# BT config
PRODUCT_COPY_FILES += \
    system/bluetooth/data/main.nonsmartphone.conf:system/etc/bluetooth/main.conf
