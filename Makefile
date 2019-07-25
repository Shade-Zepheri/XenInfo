export TARGET = iphone:latest:11.0
export ARCHS = arm64e

INSTALL_TARGET_PROCESSES = Preferences

ifneq ($(RESPRING),0)
	INSTALL_TARGET_PROCESSES += SpringBoard
endif

export ADDITIONAL_CFLAGS = -fobjc-arc

include $(THEOS)/makefiles/common.mk

# Get Sources
SOURCES  = $(shell find Tweak -name '*.m')
SOURCES += $(shell find Tweak -name '*.xm')

TWEAK_NAME = XenInfo
XenInfo_FILES = $(SOURCES)
XenInfo_FRAMEWORKS = UIKit

SUBPROJECTS += xeninfosettings

include $(THEOS_MAKE_PATH)/tweak.mk
include $(THEOS_MAKE_PATH)/aggregate.mk
