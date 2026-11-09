# Inherit from common Lineage OS tablet configuration
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)

# Inherit from device configuration
$(call inherit-product, device/tcl/8492A/device.mk)

# Inherit proprietary vendor makefile
$(call inherit-product-if-exists, vendor/tcl/8492A/8492A-vendor.mk)

# Product Information
PRODUCT_NAME := line_8492A
PRODUCT_DEVICE := 8492A
PRODUCT_BRAND := TCL
PRODUCT_MODEL := TCL Tab 10L Gen 2
PRODUCT_MANUFACTURER := TCL
