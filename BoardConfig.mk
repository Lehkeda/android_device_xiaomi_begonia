#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

BOARD_VENDOR := xiaomi

DEVICE_PATH := device/xiaomi/begonia

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-2a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a75

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-2a
TARGET_2ND_CPU_ABI := arm64-v8a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a55

TARGET_USES_64_BIT_BINDER := true

# ANT+
#BOARD_ANT_WIRELESS_DEVICE := "qualcomm-hidl"

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := mt6785
TARGET_NO_BOOTLOADER := true

# Android Verified Boot
BOARD_AVB_ENABLE := true
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x4000000
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --set_hashtree_disabled_flag
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 2

# Kernel
BOARD_KERNEL_CMDLINE := console=tty0 console=ttyS0,921600n1 root=/dev/ram vmalloc=496M slub_debug=OFZPU swiotlb=noforce cgroup.memory=nosocket,nokmem firmware_class.path=/vendor/firmware page_owner=on loop.max_part=7 has_battery_removed=0 skip_initramfs ro rootwait init=/init root=PARTUUID=f54ac030-7004-4d02-9481-bbf982036807 androidboot.verifiedbootstate=orange bootopt=64S3,32N2,64N2 androidboot.atm=disabled androidboot.meta_log_disable=0 androidboot.dtbo_idx=0 printk.disable_uart=1 bootprof.pl_t=1361 bootprof.lk_t=4009 bootprof.logo_t=960 boot_reason=4 androidboot.hypvm=disable androidboot.hwlevel=MP androidboot.hwversion=1.29.0  androidboot.dp=0 gpt=1 usb2jtag_mode=0 mrdump_ddrsv=yes mrdump_cb=0x11e000,0x2000

BOARD_KERNEL_CMDLINE += androidboot.avb_version=1.0 androidboot.vbmeta.avb_version=1.0
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_KERNEL_TAGS_OFFSET := 0x0bc08000
BOARD_RAMDISK_OFFSET := 0x07c08000
BOARD_KERNEL_IMAGE_NAME := kernel
BOARD_KERNEL_PAGESIZE := 0x800
BOARD_KERNEL_SEPARATED_DTBO := true
BOARD_DTBOIMG_PARTITION_SIZE := 0x2000000
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_CLANG_COMPILE := true
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
#TARGET_KERNEL_SOURCE := kernel/xiaomi/begonia
#TARGET_KERNEL_CONFIG := kernel/xiaomi/begonia/arch/arm64/configs/begonia_user_defconfig
TARGET_KERNEL_VERSION := 4.14
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_COMPILE_WITH_MSM_KERNEL := true
PRODUCT_COPY_FILES += device/xiaomi/begonia/kernel:kernel

# Platform
TARGET_BOARD_PLATFORM := mt6785
TARGET_BOARD_PLATFORM_GPU := mtk-helioG90T

# Charger Mode
BOARD_CHARGER_ENABLE_SUSPEND := true

# DPM
#BOARD_USES_DPM := true

# DRM
TARGET_ENABLE_MEDIADRM_64 := true

# Filesystem
#TARGET_FS_CONFIG_GEN := $(DEVICE_PATH)/config.fs

# Graphics
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024
MAX_VIRTUAL_DISPLAY_DIMENSION := 4096
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 2
SF_VSYNC_EVENT_PHASE_OFFSET_NS := 6000000
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
TARGET_USES_GRALLOC1 := true
TARGET_USES_HWC2 := true
TARGET_USES_ION := true
VSYNC_EVENT_PHASE_OFFSET_NS := 2000000
TARGET_DISABLE_DISPLAY := true

# HIDL
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE := $(DEVICE_PATH)/framework_compatibility_matrix.xml
DEVICE_FRAMEWORK_MANIFEST_FILE := $(DEVICE_PATH)/framework_manifest.xml
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/manifest.xml
DEVICE_MATRIX_FILE := $(DEVICE_PATH)/compatibility_matrix.xml

# Keystore
TARGET_PROVIDES_KEYMASTER := true

# Media
TARGET_USES_MEDIA_EXTENSIONS := true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x4000000
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE := 0x1b000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0xe0000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x300000000
BOARD_VENDORIMAGE_PARTITION_SIZE := 0x60000000
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4

BOARD_BUILD_SYSTEM_ROOT_IMAGE := true

#BOARD_FLASH_BLOCK_SIZE := 262144 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_ROOT_EXTRA_SYMLINKS := \
    /system/etc:/etc \
    /sbin/charger:/charger \
    /system/etc/prop.default:/default.prop \
    /storage/self/primary:/sdcard 
    

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := false

TARGET_COPY_OUT_VENDOR := vendor

# Releasetools
TARGET_RECOVERY_UPDATER_LIBS := librecovery_updater_xiaomi
TARGET_RELEASETOOLS_EXTENSIONS := $(DEVICE_PATH)


# Recovery
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/recovery.fstab

# TWRP specific build flags
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel0-backlight/brightness"
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_EXTRA_LANGUAGES := true
TW_INCLUDE_NTFS_3G := true
TW_USE_TOOLBOX := true
TW_NO_LEGACY_PROPS := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 180
TW_Y_OFFSET := 80
TW_H_OFFSET := -80
TW_SCREEN_BLANK_ON_BOOT := true

# Security Patch Hack to prevent Anti Rollback
PLATFORM_SECURITY_PATCH := 2025-12-31

# Inherit from the proprietary version
-include vendor/xiaomi/begonia/BoardConfigVendor.mk
