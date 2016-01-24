#
# Copyright (C) 2014 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit common language setup
$(call inherit-product, build/target/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit g630 vendor setup
$(call inherit-product-if-exists, vendor/huawei/kvy625-u/kvy625-u-vendor.mk)

# Path to overlay files
DEVICE_PACKAGE_OVERLAYS += device/huawei/kvy625-u/overlay

# Files needed for recovery image
PRODUCT_COPY_FILES += \
device/huawei/kvy625-u/kernel:kernel \
device/huawei/kvy625-u/dt.img:dt.img \
device/huawei/kvy625-u/recovery/sbin/charge_recovery:/recovery/root/sbin/charge_recovery \
device/huawei/kvy625-u/recovery/sbin/rmt_storage_recovery:/recovery/root/sbin/rmt_storage_recovery \
device/huawei/kvy625-u/recovery/sbin/rmt_oeminfo_recovery:/recovery/root/sbin/rmt_oeminfo_recovery \
device/huawei/kvy625-u/recovery/sbin/linker:/recovery/root/sbin/linker \
device/huawei/kvy625-u/recovery/sbin/charge.sh:/recovery/root/sbin/charge.sh \
device/huawei/kvy625-u/recovery/tp/1191601.img:root/tp/1191601.img
