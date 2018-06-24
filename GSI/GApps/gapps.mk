PRODUCT_COPY_FILES += \
        vendor/bootleggers/GApps/empty-permission.xml:system/etc/permissions/com.google.android.camera2.xml \
        vendor/bootleggers/GApps/empty-permission.xml:system/etc/permissions/com.google.android.camera.experimental2015.xml \
        vendor/bootleggers/GApps/empty-permission.xml:system/etc/permissions/com.google.android.camera.experimental2016.xml \
        vendor/bootleggers/GApps/empty-permission.xml:system/etc/permissions/com.google.android.camera.experimental2017.xml

DEVICE_PACKAGE_OVERLAYS += vendor/bootleggers/GApps/overlay-gapps

GAPPS_VARIANT := nano
DONT_DEXPREOPT_PREBUILTS := true
WITH_DEXPREOPT_BOOT_IMG_AND_SYSTEM_SERVER_ONLY := true
GAPPS_FORCE_PACKAGE_OVERRIDES := true
GAPPS_FORCE_BROWSER_OVERRIDES := true
GAPPS_FORCE_WEBVIEW_OVERRIDES := true
GAPPS_FORCE_DIALER_OVERRIDES := true
GAPPS_FORCE_MMS_OVERRIDES := true

PRODUCT_PACKAGES += \
       Chrome \
       CalculatorGoogle \
       PrebuiltDeskClockGoogle \
       CalendarGooglePrebuilt \
       LatinImeGoogle \
       Facelock \
       phh-overrides

$(call inherit-product, vendor/opengapps/build/opengapps-packages.mk)

