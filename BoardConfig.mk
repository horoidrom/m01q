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

# Inherit from xiaomi sdm439-common
-include device/samsung/sdm439-common/BoardConfigCommon.mk

DEVICE_PATH := device/samsung/m01q

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_m01q
TARGET_RECOVERY_DEVICE_MODULES := libinit_m01q

# Kernel
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image.gz-dtb
ifeq ($(TARGET_PREBUILT_KERNEL),)
  TARGET_KERNEL_CONFIG := samsung/sdm439_sec_defconfig
  TARGET_KERNEL_SOURCE := kernel/samsung/m01q
endif

# OTA
TARGET_OTA_ASSERT_DEVICE := m01q

# Partitions
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2245857280
BOARD_USERDATAIMAGE_PARTITION_SIZE := 10053729792
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
