# Release name
PRODUCT_RELEASE_NAME := G630

# Inherit from the common open source product configuration
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration.
$(call inherit-product, device/huawei/kvy625-u/device_kvy625-u.mk)

# Device identifier.
PRODUCT_DEVICE := kvy625-u
PRODUCT_NAME := cm_kvy625-u
PRODUCT_BRAND := huawei
PRODUCT_MODEL := kvy625-u
PRODUCT_MANUFACTURER := huawei
