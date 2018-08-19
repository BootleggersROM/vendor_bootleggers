# Our Bootleg apps
PRODUCT_PACKAGES += \
    CameraRoll \
    MiXplorerPrebuilt \
    Launcher3 \
    ShishuLauncher \
    WallpaperPickerGoogle \
    GoogleMarkup \
    ShishuWalls \
    VisualizationWallpapers \
    LatinIME \
    Jelly \
    MusicPlayer \
    bootanimation.zip

# Color required overlays packages
PRODUCT_PACKAGES += \
    AndroidDarkThemeOverlay \
    SettingsDarkThemeOverlay \
    ObfusBleu \
    NotImpPurple \
    Holillusion \
    MoveMint \
    FootprintPurple \
    BubblegumPink \
    FrenchBleu \
    Stock \
    ManiaAmber \
    SeasideMint \
    BoucheRed \
    DreamyPurple \
    KABlue \
    SpookedPurple \
    MisleadingRed \
    FSRGrey \
    HeirloomBleu \
    TruFilPink \
    WarmthOrange \
    NaturedGreen \
    ColdBleu \
    DiffDayGreen \
    DuskPurple \
    BurningRed \
    HazedPink \
    ColdYellow \
    NewHouseOrange \
    LimedGreen \
    AWMAWYOrange \
    IllusionsPurple

# Markup libs
PRODUCT_COPY_FILES += \
    vendor/bootleggers/prebuilt/common/lib/libsketchology_native.so:system/lib/libsketchology_native.so \
    vendor/bootleggers/prebuilt/common/lib64/libsketchology_native.so:system/lib64/libsketchology_native.so

# Fonts to copy
PRODUCT_COPY_FILES += \
    vendor/bootleggers/prebuilt/fonts/gobold/Gobold.ttf:system/fonts/Gobold.ttf \
    vendor/bootleggers/prebuilt/fonts/gobold/Gobold-Italic.ttf:system/fonts/Gobold-Italic.ttf \
    vendor/bootleggers/prebuilt/fonts/gobold/GoboldBold.ttf:system/fonts/GoboldBold.ttf \
    vendor/bootleggers/prebuilt/fonts/gobold/GoboldBold-Italic.ttf:system/fonts/GoboldBold-Italic.ttf \
    vendor/bootleggers/prebuilt/fonts/gobold/GoboldThinLight.ttf:system/fonts/GoboldThinLight.ttf \
    vendor/bootleggers/prebuilt/fonts/gobold/GoboldThinLight-Italic.ttf:system/fonts/GoboldThinLight-Italic.ttf \
    vendor/bootleggers/prebuilt/fonts/roadrage/road_rage.ttf:system/fonts/RoadRage-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/snowstorm/snowstorm.ttf:system/fonts/Snowstorm-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/vcrosd/vcr_osd_mono.ttf:system/fonts/ThemeableClock-vcrosd.ttf \
    vendor/bootleggers/prebuilt/fonts/googlesans/GoogleSans-Regular.ttf:system/fonts/GoogleSans-Medium.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/AdamCGPro-Regular.ttf:system/fonts/AdamCGPro-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/AlexanaNeue-Regular.ttf:system/fonts/AlexanaNeue-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/AlienLeague-Regular.ttf:system/fonts/AlienLeague-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/Azedo-Light.ttf:system/fonts/Azedo-Light.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/BigNoodleTilting-Italic.ttf:system/fonts/BigNoodleTilting-Italic.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/BigNoodleTilting-Regular.ttf:system/fonts/BigNoodleTilting-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/Biko-Regular.ttf:system/fonts/Biko-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/Blern-Regular.ttf:system/fonts/Blern-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/CoCoBiker-Regular.ttf:system/fonts/CoCoBiker-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/Fester-Medium.ttf:system/fonts/Fester-Medium.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/GinoraSans-Regular.ttf:system/fonts/GinoraSans-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/Inkferno-Regular.ttf:system/fonts/Inkferno-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/Instruction-Regular.ttf:system/fonts/Instruction-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/JackLane-Regular.ttf:system/fonts/JackLane-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/Metropolis1920-Regular.ttf:system/fonts/Metropolis1920-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/Monad-Regular.ttf:system/fonts/Monad-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/Neoneon-Regular.ttf:system/fonts/Neoneon-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/Noir-Regular.ttf:system/fonts/Noir-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/North-Regular.ttf:system/fonts/North-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/OutrunFuture-Regular.ttf:system/fonts/OutrunFuture-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/Qontra-Regular.ttf:system/fonts/Qontra-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/Riviera-Regular.ttf:system/fonts/Riviera-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/FoxAndCat-Regular.ttf:system/fonts/ThemeableDate-fc.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/FoxAndCat-Regular.ttf:system/fonts/ThemeableOwner-fc.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/TheOutbox-Regular.ttf:system/fonts/TheOutbox-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/Union-Regular.ttf:system/fonts/Union-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev2/Abel-Regular.ttf:system/fonts/Abel-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev2/AdventPro-Regular.ttf:system/fonts/AdventPro-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev2/ArchivoNarrow-Regular.ttf:system/fonts/ArchivoNarrow-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev2/AutourOne-Regular.ttf:system/fonts/AutourOne-Regular.ttf \
	vendor/bootleggers/prebuilt/fonts/fontagev2/Bariol-Regular.ttf:system/fonts/Bariol-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev2/BadScript-Regular.ttf:system/fonts/BadScript-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev2/CherrySwash-Regular.ttf:system/fonts/CherrySwash-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev2/Codystar.ttf:system/fonts/Codystar.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev2/IBMPlexMono.ttf:system/fonts/IBMPlexMono.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev2/IBMPlexMono-Light.ttf:system/fonts/IBMPlexMono-Light.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev2/Jura-Regular.ttf:system/fonts/Jura-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev2/KellySlab-Regular.ttf:system/fonts/KellySlab-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev2/Pompiere-Regular.ttf:system/fonts/Pompiere-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev2/Raleway-Light.ttf:system/fonts/Raleway-Light.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev2/ReemKufi-Regular.ttf:system/fonts/ReemKufi-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev2/Satisfy-Regular.ttf:system/fonts/Satisfy-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev2/SeaweedScript-Regular.ttf:system/fonts/SeaweedScript-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev2/SedgwickAveDisplay-Regular.ttf:system/fonts/SedgwickAveDisplay-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev2/Vibur.ttf:system/fonts/Vibur.ttf \
    vendor/bootleggers/prebuilt/fonts/fontagev2/Voltaire.ttf:system/fonts/Voltaire.ttf

#Call special ringtones makefile
include vendor/bootleggers/config/common_audio.mk


### COMMENTED WASTELAND - MOVED TEMPORALLY HERE DUE TO WIP ###
#
# Theme-Required overlays packages
#PRODUCT_PACKAGES += \
#    DarkThemeAndroidOverlay \
#    DarkThemeSettingsOverlay \
#    DarkThemeSystemUIOverlay \
#    BlackThemeAndroidOverlay \
#    BlackThemeSettingsOverlay \
#    BlackThemeSystemUIOverlay \
#    ShishuThemeAndroidOverlay \
#    ShishuThemeSettingsOverlay \
#    ShishuThemeSystemUIOverlay \
#    ShishuNightsThemeAndroidOverlay \
#    ShishuNightsThemeSettingsOverlay \
#    ShishuNightsThemeSystemUIOverlay \
#    ShishuIllusionsThemeAndroidOverlay \
#    ShishuIllusionsThemeSettingsOverlay \
#    ShishuIllusionsThemeSystemUIOverlay \
#    ShishuImmensityThemeAndroidOverlay \
#    ShishuImmensityThemeSettingsOverlay \
#    ShishuImmensityThemeSystemUIOverlay \
#    ShishuAmalgamationThemeAndroidOverlay \
#    ShishuAmalgamationThemeSettingsOverlay \
#    ShishuAmalgamationThemeSystemUIOverlay
#
# Some Extra packages required to be built from here
#PRODUCT_PACKAGES += \
#    org.dirtyunicorns.utils \
#    OmniStyle \
#    OmniJaws
#
# DU Utils library
#PRODUCT_BOOT_JARS += \
#    org.dirtyunicorns.utils
#
# DU-Fonts
#PRODUCT_PACKAGES += \
#    CustomFonts