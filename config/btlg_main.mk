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

# Livedisplay
PRODUCT_COPY_FILES += \
    vendor/bootleggers/config/permissions/org.lineageos.livedisplay.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/org.lineageos.livedisplay.xml \

# Fonts to copy
PRODUCT_COPY_FILES += \
    vendor/bootleggers/prebuilt/fonts/fonts_shishufied.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/fonts_customization.xml \
    vendor/bootleggers/prebuilt/fonts/gobold/Gobold.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Gobold.ttf \
    vendor/bootleggers/prebuilt/fonts/gobold/Gobold-Italic.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Gobold-Italic.ttf \
    vendor/bootleggers/prebuilt/fonts/gobold/GoboldBold.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/GoboldBold.ttf \
    vendor/bootleggers/prebuilt/fonts/gobold/GoboldBold-Italic.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/GoboldBold-Italic.ttf \
    vendor/bootleggers/prebuilt/fonts/gobold/GoboldThinLight.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/GoboldThinLight.ttf \
    vendor/bootleggers/prebuilt/fonts/gobold/GoboldThinLight-Italic.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/GoboldThinLight-Italic.ttf \
    vendor/bootleggers/prebuilt/fonts/roadrage/road_rage.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/RoadRage-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/snowstorm/snowstorm.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Snowstorm-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/vcrosd/vcr_osd_mono.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/ThemeableClock-vcrosd.ttf \
    vendor/bootleggers/prebuilt/fonts/googlesans/GoogleSans-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/GoogleSans-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/googlesans/GoogleSans-Medium.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/GoogleSans-Medium.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/AdamCGPro-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/AdamCGPro-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/AlexanaNeue-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/AlexanaNeue-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/AlienLeague-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/AlienLeague-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/Azedo-Light.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Azedo-Light.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/BigNoodleTilting-Italic.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/BigNoodleTilting-Italic.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/BigNoodleTilting-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/BigNoodleTilting-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/Biko-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Biko-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/Blern-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Blern-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/CoCoBiker-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/CoCoBiker-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/Fester-Medium.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Fester-Medium.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/GinoraSans-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/GinoraSans-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/Inkferno-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Inkferno-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/Instruction-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Instruction-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/JackLane-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/JackLane-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/Metropolis1920-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Metropolis1920-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/Monad-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Monad-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/Neoneon-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Neoneon-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/Noir-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Noir-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/North-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/North-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/OutrunFuture-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/OutrunFuture-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/Qontra-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Qontra-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/Riviera-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Riviera-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/FoxAndCat-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/ThemeableDate-fc.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/FoxAndCat-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/ThemeableOwner-fc.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/TheOutbox-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/TheOutbox-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/Union-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Union-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev2/Abel-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Abel-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev2/AdventPro-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/AdventPro-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev2/ArchivoNarrow-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/ArchivoNarrow-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev2/AutourOne-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/AutourOne-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev2/Bariol-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Bariol-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev2/BadScript-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/BadScript-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev2/CherrySwash-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/CherrySwash-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev2/Codystar.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Codystar.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev2/din1451alt.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/din1451alt.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev2/Hanken-Light.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Hanken-Light.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev2/IBMPlexMono.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/IBMPlexMono.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev2/IBMPlexMono-Light.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/IBMPlexMono-Light.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev2/Jura-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Jura-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev2/KellySlab-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/KellySlab-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev2/Pompiere-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Pompiere-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev2/Raleway-Light.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Raleway-Light.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev2/ReemKufi-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/ReemKufi-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev2/Satisfy-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Satisfy-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev2/SeaweedScript-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/SeaweedScript-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev2/SedgwickAveDisplay-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/SedgwickAveDisplay-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev2/Vibur.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Vibur.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev2/Voltaire.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Voltaire.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev3/AuthenticSans-Medium.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/AuthenticSans-Medium.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev3/AuthenticSans-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/AuthenticSans-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev3/ComicNeue-Bold.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/ComicNeue-Bold.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev3/ComicNeue-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/ComicNeue-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev3/Decalotype-Medium.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Decalotype-Medium.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev3/Decalotype-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Decalotype-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev3/Exo2-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Exo2-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev3/Exo2-SemiBold.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Exo2-SemiBold.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev3/FantasqueMono-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/FantasqueMono-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev3/Fleuron-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Fleuron-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev3/Finlandica-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Finlandica-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev3/Gothamono-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Gothamono-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev3/Gravity-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Gravity-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev3/IgnazioText-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/IgnazioText-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev3/Inter-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Inter-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev3/Inter-MediumItalic.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Inter-MediumItalic.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev3/JakartaPlus-Medium.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/JakartaPlus-Medium.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev3/JakartaPlus-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/JakartaPlus-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev3/LeagueMono-RegularNarrow.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/LeagueMono-RegularNarrow.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev3/LeagueMono-MediumNarrow.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/LeagueMono-MediumNarrow.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev3/LeagueMono-BoldNarrow.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/LeagueMono-BoldNarrow.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev3/LeagueMono-SemiBoldNarrow.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/LeagueMono-SemiBoldNarrow.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev3/LeonSans-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/LeonSans-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev3/Lumie-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Lumie-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev3/mescla_regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/mescla_regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev3/Millimetre-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Millimetre-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev3/Now-Medium.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Now-Medium.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev3/Now-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Now-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev3/OdibeeSans-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/OdibeeSans-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev3/OpenSauceSans-Medium.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/OpenSauceSans-Medium.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev3/OpenSauceSans-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/OpenSauceSans-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev3/Panamericana-Display.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Panamericana-Display.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev3/PTSans-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/PTSans-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev3/PTMono-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/PTMono-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev3/QTVagaRound-Bold.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/QTVagaRound-Bold.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev3/QTVagaRound-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/QTVagaRound-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev3/routed-gothic-narrow.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/routed-gothic-narrow.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev3/routed-gothic-narrow-half-italic.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/routed-gothic-narrow-half-italic.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev3/Scientifica-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Scientifica-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev3/SofiaSans-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/SofiaSans-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev3/SofiaSans-Medium.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/SofiaSans-Medium.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev3/SofiaSansSemiCond-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/SofiaSansSemiCond-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev3/SofiaSansSemiCond-Medium.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/SofiaSansSemiCond-Medium.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev3/Universalis-Bold.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Universalis-Bold.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev3/Universalis-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Universalis-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev3/UniversalisCond-Bold.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/UniversalisCond-Bold.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev3/UniversalisCond-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/UniversalisCond-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev3/VG5000-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/VG5000-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev3/Vladisvostok-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Vladisvostok-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev3/Volte-Bold.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Volte-Bold.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev3/Volte-Medium.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Volte-Medium.ttf


# Ignore overlays on RRO builds
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += \
    vendor/bootleggers/overlay

# Call our special makefiles before anything
include vendor/bootleggers/config/btlg_packages.mk
include vendor/bootleggers/config/btlg_branding.mk

# Call special ringtones makefile
include vendor/bootleggers/config/common_audio.mk
