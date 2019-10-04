# Markup libs
ifeq ($(TARGET_BOOTLEG_ARCH),arm64)
    PRODUCT_COPY_FILES += \
           vendor/bootleggers/prebuilt/common/lib/libsketchology_native.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libsketchology_native.so \
           vendor/bootleggers/prebuilt/common/lib64/libsketchology_native.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libsketchology_native.so
else
    PRODUCT_COPY_FILES += \
           vendor/bootleggers/prebuilt/common/lib/libsketchology_native.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libsketchology_native.so
endif

# Weather
PRODUCT_COPY_FILES += \
    vendor/bootleggers/prebuilt/common/etc/permissions/com.android.providers.weather.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.android.providers.weather.xml \
    vendor/bootleggers/prebuilt/common/etc/default-permissions/com.android.providers.weather.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/default-permissions/com.android.providers.weather.xml

# Fonts to copy
PRODUCT_COPY_FILES += \
    vendor/bootleggers/prebuilt/fonts/gobold/Gobold.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Gobold.ttf \
    vendor/bootleggers/prebuilt/fonts/gobold/Gobold-Italic.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Gobold-Italic.ttf \
    vendor/bootleggers/prebuilt/fonts/gobold/GoboldBold.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/GoboldBold.ttf \
    vendor/bootleggers/prebuilt/fonts/gobold/GoboldBold-Italic.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/GoboldBold-Italic.ttf \
    vendor/bootleggers/prebuilt/fonts/gobold/GoboldThinLight.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/GoboldThinLight.ttf \
    vendor/bootleggers/prebuilt/fonts/gobold/GoboldThinLight-Italic.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/GoboldThinLight-Italic.ttf \
    vendor/bootleggers/prebuilt/fonts/roadrage/road_rage.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/RoadRage-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/snowstorm/snowstorm.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Snowstorm-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/vcrosd/vcr_osd_mono.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/ThemeableClock-vcrosd.ttf \
    vendor/bootleggers/prebuilt/fonts/googlesans/GoogleSans-Regular.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/GoogleSans-Medium.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/AdamCGPro-Regular.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/AdamCGPro-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/AlexanaNeue-Regular.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/AlexanaNeue-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/AlienLeague-Regular.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/AlienLeague-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/Azedo-Light.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Azedo-Light.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/BigNoodleTilting-Italic.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/BigNoodleTilting-Italic.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/BigNoodleTilting-Regular.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/BigNoodleTilting-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/Biko-Regular.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Biko-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/Blern-Regular.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Blern-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/CoCoBiker-Regular.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/CoCoBiker-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/Fester-Medium.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Fester-Medium.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/GinoraSans-Regular.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/GinoraSans-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/Inkferno-Regular.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Inkferno-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/Instruction-Regular.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Instruction-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/JackLane-Regular.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/JackLane-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/Metropolis1920-Regular.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Metropolis1920-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/Monad-Regular.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Monad-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/Neoneon-Regular.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Neoneon-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/Noir-Regular.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Noir-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/North-Regular.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/North-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/OutrunFuture-Regular.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/OutrunFuture-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/Qontra-Regular.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Qontra-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/Riviera-Regular.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Riviera-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/FoxAndCat-Regular.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/ThemeableDate-fc.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/FoxAndCat-Regular.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/ThemeableOwner-fc.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/TheOutbox-Regular.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/TheOutbox-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/Union-Regular.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Union-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev2/Abel-Regular.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Abel-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev2/AdventPro-Regular.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/AdventPro-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev2/ArchivoNarrow-Regular.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/ArchivoNarrow-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev2/AutourOne-Regular.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/AutourOne-Regular.ttf \
	vendor/bootleggers/prebuilt/fonts/fontagev2/Bariol-Regular.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Bariol-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev2/BadScript-Regular.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/BadScript-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev2/CherrySwash-Regular.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/CherrySwash-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev2/Codystar.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Codystar.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev2/IBMPlexMono.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/IBMPlexMono.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev2/IBMPlexMono-Light.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/IBMPlexMono-Light.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev2/Jura-Regular.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Jura-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev2/KellySlab-Regular.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/KellySlab-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev2/Pompiere-Regular.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Pompiere-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev2/Raleway-Light.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Raleway-Light.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev2/ReemKufi-Regular.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/ReemKufi-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev2/Satisfy-Regular.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Satisfy-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev2/SeaweedScript-Regular.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/SeaweedScript-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev2/SedgwickAveDisplay-Regular.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/SedgwickAveDisplay-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev2/Vibur.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Vibur.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev2/Voltaire.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Voltaire.ttf

# Call our special makefiles before anything
include vendor/bootleggers/config/btlg_branding.mk
include vendor/bootleggers/config/btlg_packages.mk

# Call special ringtones makefile
include vendor/bootleggers/config/common_audio.mk
