# Copyright (C) 2016 The CyanogenMod Project
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


# Release name
PRODUCT_RELEASE_NAME := Prime L

# Inherit from device
$(call inherit-product, device/highscreen/primel/device_primel.mk)

# Inherit some common DU stuff.
$(call inherit-product, vendor/du/config/common_full_phone.mk)


# Configure dalvik heap
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720


PRODUCT_NAME := du_primel
PRODUCT_DEVICE := primel
PRODUCT_MANUFACTURER := Highscreen
PRODUCT_BRAND := Highscreen


PRODUCT_DEFAULT_LANGUAGE := ru
PRODUCT_DEFAULT_REGION   := RU
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
persist.sys.timezone=Europe/Moscow




