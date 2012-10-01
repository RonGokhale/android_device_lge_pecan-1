# Prepare for new BootAnimation
TARGET_BOOTANIMATION_NAME := vertical-240x320

## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Include GSM stuff
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit from those products. Most specific first
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

#$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cm/config/common_mini_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/pecan/pecan.mk)

## Device identifier. This must come after all inclusions
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_DISPLAY_ID=IMM76L \
    BUILD_FINGERPRINT="lge/pecan/pecan:4.0.4/IMM76D/299849:user/release-keys" \
    PRIVATE_BUILD_DESC="pecan-user 4.0.4 IMM76D 299849 release-keys"

TARGET_NO_LIVEWALLPAPERS := true

PRODUCT_DEVICE := pecan
PRODUCT_NAME := cm_pecan
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-P350
PRODUCT_MANUFACTURER := lge
PRODUCT_CHARACTERISTICS := phone

# Release name and versioning
PRODUCT_RELEASE_NAME := OptimusMe
PRODUCT_VERSION_DEVICE_SPECIFIC :=

# For userdebug builds
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.secure=0 \
    ro.allow.mock.location=1 \
    ro.debuggable=1


