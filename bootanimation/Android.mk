#
# Copyright (C) 2016 The CyanogenMod Project
#               2017-2019 The LineageOS Project
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
    $(warning TARGET_SCREEN_WIDTH is not set, using default value: 1080)
    TARGET_SCREEN_WIDTH := 1080
endif
ifeq ($(TARGET_SCREEN_HEIGHT),)
    $(warning TARGET_SCREEN_HEIGHT is not set, using default value: 1920)
    TARGET_SCREEN_HEIGHT := 1920
endif

TARGET_GENERATED_BOOTANIMATION1 := $(TARGET_OUT_INTERMEDIATES)/BOOTANIMATION1/bootanimation.zip
$(TARGET_GENERATED_BOOTANIMATION1): INTERMEDIATES := $(TARGET_OUT_INTERMEDIATES)/BOOTANIMATION1
$(TARGET_GENERATED_BOOTANIMATION1): $(SOONG_ZIP)
	@echo "Building bootanimation.zip"
	@rm -rf $(dir $@)
	@mkdir -p $(dir $@)
	$(hide) if [ -z $(TARGET_PICK_BOOTANIMATION)]; then \
      BOOTSELECTED=$$(prebuilts/tools-lineage/common/shuffle/shuf -i 0-9 -n 1); \
  else \
      if [ $(TARGET_PICK_BOOTANIMATION) -lt 9]; then \
          BOOTSELECTED=$(TARGET_PICK_BOOTANIMATION); \
      else \
          BOOTSELECTED=$$(prebuilts/tools-lineage/common/shuffle/shuf -i 0-9 -n 1); \
      fi; \
  fi; \
  if [ $(TARGET_SCREEN_HEIGHT) -lt $(TARGET_SCREEN_WIDTH) ]; then \
	    IMAGEWIDTH=$(TARGET_SCREEN_HEIGHT); \
	else \
	    IMAGEWIDTH=$(TARGET_SCREEN_WIDTH); \
	fi; \
	IMAGESCALEWIDTH=$$IMAGEWIDTH; \
	IMAGESCALEHEIGHT=$$(expr $$IMAGESCALEWIDTH / 3); \
	if [ "$(TARGET_BOOTANIMATION_HALF_RES)" = "true" ]; then \
	    IMAGEWIDTH="$$(expr "$$IMAGEWIDTH" / 2)"; \
	fi; \
	IMAGEHEIGHT=$$(expr $$IMAGEWIDTH / 3); \
	RESOLUTION="$$IMAGEWIDTH"x"$$IMAGEHEIGHT"; \
	for part_cnt in 0 1 2; do \
	    mkdir -p $(INTERMEDIATES)/part$$part_cnt; \
	done; \
	case "$$BOOTSELECTED" in \
	    [0-1]) \
	        BOOTFPS="30"; \
	    ;; \
	    2) \
	        BOOTFPS="48"; \
	    ;; \
	    [3-4]) \
	        BOOTFPS="50"; \
	    ;; \
	    [5-7]) \
	        BOOTFPS="25"; \
	    ;; \
	    [8-9]) \
	        BOOTFPS="30"; \
	    ;; \
	    *) \
	        echo "Info: Something went wrong at the time of taking the number."; \
	esac; \
	tar xfp "vendor/bootleggers/bootanimation/bootanimation$$BOOTSELECTED.tar" --to-command="prebuilts/tools-lineage/${HOST_OS}-x86/bin/convert - -strip -quality 55 -resize $$RESOLUTION^ -colors 250 -gravity center -crop $$RESOLUTION+0+0 +repage \"$(INTERMEDIATES)/\$$TAR_FILENAME\""; \
	echo "$$IMAGESCALEWIDTH $$IMAGESCALEHEIGHT $$BOOTFPS" > $(INTERMEDIATES)/desc.txt; \
	cat vendor/bootleggers/bootanimation/desc.txt >> $(INTERMEDIATES)/desc.txt
	$(hide) $(SOONG_ZIP) -L 0 -o $(TARGET_GENERATED_BOOTANIMATION1) -C $(INTERMEDIATES) -D $(INTERMEDIATES)

ifeq ($(TARGET_BOOTANIMATION1),)
    TARGET_BOOTANIMATION1 := $(TARGET_GENERATED_BOOTANIMATION1)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := bootanimation.zip
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/media

include $(BUILD_SYSTEM)/base_rules.mk

$(LOCAL_BUILT_MODULE): $(TARGET_BOOTANIMATION1)
	@cp $(TARGET_BOOTANIMATION1) $@
