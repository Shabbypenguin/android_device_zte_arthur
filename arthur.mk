# Copyright (C) 2013 The Android Open Source Project
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

PRODUCT_NAME := cm_arthur
PRODUCT_DEVICE := arthur
PRODUCT_BRAND := ZTE	
PRODUCT_MODEL := CyanogenMod Android on Arthur
PRODUCT_MANUFACTURER := ZTE

TARGET_PREBUILT_KERNEL ?= kernel
PRODUCT_COPY_FILES += $(LOCAL_PATH)/$(TARGET_PREBUILT_KERNEL):kernel

PRODUCT_COPY_FILES += \
    device/zte/arthur/rootdir/lib/modules/libra.ko:system/lib/modules/libra.ko \
    device/zte/arthur/rootdir/lib/modules/libra_ftm.ko:system/lib/modules/libra_ftm.ko \
    device/zte/arthur/rootdir/lib/modules/librasdioif.ko:system/lib/modules/librasdioif.ko

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=240

