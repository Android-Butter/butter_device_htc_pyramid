

# Inherit device configuration
$(call inherit-product, device/htc/pyramid/device_pyramid.mk)

# Device naming
PRODUCT_NAME := pyramid
PRODUCT_DEVICE := full_pyramid
PRODUCT_BRAND := htc
PRODUCT_MODEL := HTC Sensation
PRODUCT_MANUFACTURER := HTC


#
# Set up the product codename, build version & MOTD.
#
PRODUCT_CODENAME := aosp
PRODUCT_VERSION_DEVICE_SPECIFIC := _JB_6

PRODUCT_MOTD := "\n\n\n--------------------EXPECT US!---------------------\nThank you for choosing Butter-JellyBean\n"

# Copy compatible prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/butter/prebuilt/qhd/media/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_COPY_FILES +=  \
    vendor/butter/prebuilt/common/app/SuperSU.apk:system/app/SuperSU.apk 

PRODUCT_COPY_FILES +=  \
    vendor/butter/prebuilt/common/app/PerformanceControl.apk:system/app/PerformanceControl.apk

PRODUCT_COPY_FILES +=  \
    vendor/butter/prebuilt/common/xbin/su:system/xbin/su

# qHD overlay
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/butter/overlay/qhd

# Hot reboot
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/butter/overlay/hot_reboot
