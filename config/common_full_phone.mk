# Inherit common stuff
$(call inherit-product, vendor/bootleggers/config/common.mk)
$(call inherit-product, vendor/bootleggers/config/common_apn.mk)
$(call inherit-product, vendor/bootleggers/config/caf_fw.mk)

# Telephony 
PRODUCT_PACKAGES += \
    Stk 

# SMS
PRODUCT_PACKAGES += \
	messaging
