#
# Copyright (C) 2016 The CyanogenMod Project
#               2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

ifeq ($(TARGET_SCREEN_WIDTH),)
ifeq ($(TARGET_SCREEN_HEIGHT),)
    $(warning TARGET_SCREEN_WIDTH and TARGET_SCREEN_HEIGHT are not defined. For better support, declare the values on your device tree.)
endif
endif

ifeq ($(TARGET_SCREEN_WIDTH),)
    $(warning TARGET_SCREEN_WIDTH is not set, using default value: 1080)
    TARGET_SCREEN_WIDTH := 1080
endif
ifeq ($(TARGET_SCREEN_HEIGHT),)
    $(warning TARGET_SCREEN_HEIGHT is not set, using default value: 1920)
    TARGET_SCREEN_HEIGHT := 1920
endif

ifeq ($(TARGET_BOOTANIMATION_HALF_RES),)
    TARGET_BOOTANIMATION_HALF_RES := false
endif

define build-bootanimation
    ./vendor/bootleggers/bootanimation/generate-bootanimation.sh \
    $(TARGET_SCREEN_WIDTH) \
    $(TARGET_SCREEN_HEIGHT) \
    $(TARGET_BOOTANIMATION_HALF_RES) \
    $(TARGET_BOOTANIMATION_BUILDNUMBER) \
    "$(TARGET_PICK_BOOTANIMATION)"
endef

TARGET_GENERATED_BOOTANIMATION := $(TARGET_OUT_INTERMEDIATES)/BOOTANIMATIONS/1/bootanimation.zip
TARGET_GENERATED_BOOTANIMATION2 := $(TARGET_OUT_INTERMEDIATES)/BOOTANIMATIONS/2/bootanimation2.zip
TARGET_GENERATED_BOOTANIMATION3 := $(TARGET_OUT_INTERMEDIATES)/BOOTANIMATIONS/3/bootanimation3.zip

$(TARGET_GENERATED_BOOTANIMATION):
	@echo "Building bootanimation"
	$(eval TARGET_BOOTANIMATION_BUILDNUMBER := 1)
	$(build-bootanimation)

$(TARGET_GENERATED_BOOTANIMATION2):
	@echo "Building second bootanimation"
	$(eval TARGET_BOOTANIMATION_BUILDNUMBER := 2)
	$(build-bootanimation)

$(TARGET_GENERATED_BOOTANIMATION3):
	@echo "Building third bootanimation"
	$(eval TARGET_BOOTANIMATION_BUILDNUMBER := 3)
	$(build-bootanimation)

ifeq ($(TARGET_BOOTANIMATION),)
    TARGET_BOOTANIMATION := $(TARGET_GENERATED_BOOTANIMATION)
endif
ifeq ($(TARGET_BOOTANIMATION2),)
    TARGET_BOOTANIMATION2 := $(TARGET_GENERATED_BOOTANIMATION2)
endif
ifeq ($(TARGET_BOOTANIMATION3),)
    TARGET_BOOTANIMATION3 := $(TARGET_GENERATED_BOOTANIMATION3)
endif

ifeq ($(shell command -v convert),)
    $(info **********************************************)
    $(info The boot animation could not be generated as)
    $(info ImageMagick is not installed in your system.)
    $(info $(space))
    $(info Please install ImageMagick from this website:)
    $(info https://imagemagick.org/script/binary-releases.php)
    $(info **********************************************)
    $(error stop)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := bootanimation.zip
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/media
include $(BUILD_SYSTEM)/base_rules.mk

$(LOCAL_BUILT_MODULE): $(TARGET_BOOTANIMATION)
	@mkdir -p $(dir $@)
	@cp $(TARGET_BOOTANIMATION) $@

include $(CLEAR_VARS)
LOCAL_MODULE := bootanimation2.zip
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/media
include $(BUILD_SYSTEM)/base_rules.mk

$(LOCAL_BUILT_MODULE): $(TARGET_BOOTANIMATION2)
	@cp $(TARGET_BOOTANIMATION2) $@
	@mkdir -p $(dir $@)

include $(CLEAR_VARS)
LOCAL_MODULE := bootanimation3.zip
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/media
include $(BUILD_SYSTEM)/base_rules.mk

$(LOCAL_BUILT_MODULE): $(TARGET_BOOTANIMATION3)
	@mkdir -p $(dir $@)
	@cp $(TARGET_BOOTANIMATION3) $@
