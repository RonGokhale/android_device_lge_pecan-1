USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/lge/pecan/BoardConfigVendor.mk

# Camera
# http://r.cyanogenmod.com/#/c/13317/
COMMON_GLOBAL_CFLAGS += -DBINDER_COMPAT
#BOARD_CAMERA_USE_GETBUFFERINFO := true
#BOARD_USE_CAF_LIBCAMERA := true
# This is needed by libcamera.so
BOARD_USE_NASTY_PTHREAD_CREATE_HACK := true


TARGET_NO_BOOTLOADER := true
# Arch related defines
ARCH_ARM_HAVE_VFP := true
TARGET_BOARD_PLATFORM := msm7x27
TARGET_ARCH_VARIANT := armv6-vfp
TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi
TARGET_BOOTLOADER_BOARD_NAME := pecan

TARGET_USES_GENLOCK := true

# Kernel
TARGET_KERNEL_SOURCE := kernel/lge/msm7x27
TARGET_KERNEL_CONFIG := cyanogenmod_pecan_defconfig

# USB mass storage
BOARD_CUSTOM_USB_CONTROLLER := ../../device/lge/pecan/UsbController.cpp
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
BOARD_HAS_SDCARD_INTERNAL := true
BOARD_SDCARD_DEVICE_INTERNAL := /dev/block/vold/179:0
BOARD_SDEXT_DEVICE := /dev/block/vold/179:1
BOARD_UMS_LUNFILE := /sys/devices/platform/msm_hsusb/gadget/lun0/file
TARGET_USE_CUSTOM_LUN_FILE_PATH  := "/sys/devices/platform/msm_hsusb/gadget/lun0/file"

# Browser
JS_ENGINE := v8
HTTP := chrome
WITH_JIT := true
TARGET_WEBKIT_USE_MORE_MEMORY := true

# Audio
TARGET_PROVIDES_LIBAUDIO := true
BOARD_USES_AUDIO_LEGACY := true
BOARD_USES_QCOM_AUDIO_SPEECH := true
BOARD_COMBO_DEVICE_SUPPORTED := true

# RIL
BOARD_PROVIDES_LIBRIL := true

# Enable the GPS HAL & AMSS version to use for GPS
BOARD_GPS_LIBRARIES := libgps librpc
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := default
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# Graphics
BOARD_EGL_CFG := device/lge/pecan/prebuilt/lib/egl/egl.cfg
TARGET_SPECIFIC_HEADER_PATH := device/lge/pecan/include
BOARD_USE_SKIA_LCDTEXT := true
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE -DREFRESH_RATE=60
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true

#Nedeed for LGPECAN sensors 
COMMON_GLOBAL_CFLAGS += -DUSE_LGE_ALS_DUMMY

# Wi-Fi & Wi-Fi HotSpot
WPA_SUPPLICANT_VERSION          := VER_0_6_X
BOARD_WLAN_DEVICE               := bcm4329
BOARD_WEXT_NO_COMBO_SCAN        := true
BOARD_WPA_SUPPLICANT_DRIVER     := WEXT
WIFI_DRIVER_HAS_LGE_SOFTAP      := true
WIFI_DRIVER_MODULE_PATH         := "/system/lib/modules/wireless.ko"
WIFI_DRIVER_MODULE_ARG          := "firmware_path=/etc/wl/rtecdc.bin nvram_path=/etc/wl/nvram.txt config_path=/data/misc/wifi/config"
WIFI_DRIVER_MODULE_NAME         := "wireless"
WIFI_DRIVER_FW_PATH_STA         := "/system/etc/wl/rtecdc.bin"
WIFI_DRIVER_FW_PATH_AP          := "/system/etc/wl/rtecdc-apsta.bin"

# Recovery
BOARD_LDPI_RECOVERY := true
BOARD_HAS_JANKY_BACKBUFFER := true
BOARD_CUSTOM_GRAPHICS := ../../../device/lge/pecan/recovery/graphics.c

# Sensors
TARGET_USES_OLD_LIBSENSORS_HAL := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_FM_DEVICE := bcm4329
BOARD_HAVE_FM_RADIO := true
COMMON_GLOBAL_CFLAGS += -DHAVE_FM_RADIO

# KERNEL
BOARD_KERNEL_CMDLINE := mem=215M console=ttyMSM2,115200n8 androidboot.hardware=pecan
BOARD_KERNEL_BASE := 0x02808000
BOARD_KERNEL_PAGESIZE := 2048

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00440000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00500000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0c800000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0bd80000
BOARD_FLASH_BLOCK_SIZE := 131072

# ICS Stuff 
BOARD_HAS_NO_SELECT_BUTTON := true
# Command line for charging mode
BOARD_CHARGING_CMDLINE_NAME := "lge.reboot"
BOARD_CHARGING_CMDLINE_VALUE := "pwroff"
BOARD_USES_RECOVERY_CHARGEMODE := false

# Touch screen compatibility for ICS
BOARD_USE_LEGACY_TOUCHSCREEN := true
