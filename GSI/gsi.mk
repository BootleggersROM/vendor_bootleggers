# Such Bootleg
$(call inherit-product, vendor/bootleggers/GSI/bootleg.mk)

# Wow, GApps
$(call inherit-product, vendor/bootleggers/GSI/GApps/gapps.mk)

# Noice overlays
DEVICE_PACKAGE_OVERLAYS += vendor/bootleggers/GSI/overlays


