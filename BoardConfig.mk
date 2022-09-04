LOCAL_PATH := device/samsung/heatqlte

# Inherit from common
include device/samsung/qcom-common/BoardConfigCommon.mk

# Includes from vendor
-include vendor/samsung/heatqlte/BoardConfigVendor.mk

# Asserts
TARGET_OTA_ASSERT_DEVICE := heatqlte,heatqltexx,g357fz,sm-g357fz

# Init
TARGET_INIT_VENDOR_LIB := libinit_msm
TARGET_PLATFORM_DEVICE_BASE := /devices/soc.0/

# Kernel
TARGET_KERNEL_SOURCE := kernel/samsung/heatqltexx
TARGET_KERNEL_CONFIG := heatqlte_defconfig

BOARD_CUSTOM_BOOTIMG_MK := $(LOCAL_PATH)/mkbootimg.mk
BOARD_DTBTOOL_ARGS := -2
BOARD_KERNEL_SEPARATED_DT := true
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET := 0x02000000
BOARD_KERNEL_TAGS_OFFSET := 0x01e00000
BOARD_SECOND_OFFSET := 0x00f0000

BOARD_KERNEL_CMDLINE += \
	console=null \
	androidboot.hardware=qcom \
	user_debug=31 \
	msm_rtb.filter=0x3F \
	ehci-hcd.park=3 \
	androidboot.bootdevice=7824900.sdhci \
	androidboot.selinux=permissive

# Platform
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_CORTEX_A53 := true
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_BOARD_PLATFORM := msm8916
TARGET_BOARD_PLATFORM_GPU := qcom-adreno306
FORCE_32_BIT := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8916

# Healthd
BOARD_HAL_STATIC_LIBRARIES := libhealthd-heatqlte.qcom

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 13631488
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 15728640
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1572864000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5509201920
BOARD_CACHEIMAGE_PARTITION_SIZE := 524288000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4

# Vold
BOARD_VOLD_DISC_HAS_MULTIPLE_MAJORS := true
BOARD_VOLD_MAX_PARTITIONS := 67
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file

# ANT+
BOARD_ANT_WIRELESS_DEVICE := "vfs-prerelease"

# Audio
BOARD_USES_ALSA_AUDIO := true
TARGET_QCOM_AUDIO_VARIANT := caf
AUDIO_FEATURE_MDM_DETECT := true
TARGET_USES_QCOM_MM_AUDIO := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
QCOM_BT_USE_BTNV := true
BLUETOOTH_HCI_USE_MCT := true

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Protobuf
PROTOBUF_SUPPORTED := true

# malloc implementation
MALLOC_IMPL := dlmalloc

# Power
TARGET_POWERHAL_VARIANT := qcom

# FM
AUDIO_FEATURE_ENABLED_FM := true
TARGET_QCOM_NO_FM_FIRMWARE := true

# Display
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so
TARGET_CONTINUOUS_SPLASH_ENABLED := true

TARGET_USES_QCOM_BSP := true
TARGET_QCOM_DISPLAY_VARIANT := caf-new

# Qualcomm support
HAVE_SYNAPTICS_I2C_RMI4_FW_UPGRADE   := true
USE_DEVICE_SPECIFIC_QCOM_PROPRIETARY := true
TARGET_USES_NEW_ION_API := true

# Wifi
WLAN_CHIPSET := pronto
BOARD_HAS_QCOM_WLAN := true
BOARD_HAS_QCOM_WLAN_SDK := true
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_qcwcn
BOARD_WLAN_DEVICE := qcwcn
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_qcwcn
TARGET_USES_QCOM_WCNSS_QMI := true
TARGET_USES_WCNSS_CTRL := true
WIFI_DRIVER_FW_PATH_AP := "ap"
WIFI_DRIVER_FW_PATH_STA := "sta"
WPA_SUPPLICANT_VERSION := VER_0_8_X

# WLAN_MODULES:
# 	mkdir -p $(KERNEL_MODULES_OUT)/pronto
# 	ln -sf $(TARGET_OUT)/lib/modules/pronto/pronto_wlan.ko $(TARGET_OUT)/lib/modules/wlan.ko

# TARGET_KERNEL_MODULES += WLAN_MODULES

# Time services
BOARD_USES_QC_TIME_SERVICES := true

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_RECOVERY_SWIPE := true
BOARD_USES_MMCUTILS := true
BOARD_SUPPRESS_EMMC_WIPE := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
TARGET_RECOVERY_DENSITY := hdpi
TARGET_RECOVERY_QCOM_RTC_FIX := true

TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/recovery.fstab