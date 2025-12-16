ARCHS := arm64 arm64e
TARGET := iphone:clang:16.5:14.0
INSTALL_TARGET_PROCESSES := Preferences

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME := NetworkSnifferPrefs

NetworkSnifferPrefs_FILES += ENSRootListController.m
NetworkSnifferPrefs_FRAMEWORKS += UIKit
NetworkSnifferPrefs_PRIVATE_FRAMEWORKS += Preferences
NetworkSnifferPrefs_INSTALL_PATH := /Library/PreferenceBundles
NetworkSnifferPrefs_CFLAGS += -fobjc-arc

ifeq ($(THEOS_PACKAGE_SCHEME),rootless)
NetworkSnifferPrefs_CFLAGS += -FFrameworks/_rootless
NetworkSnifferPrefs_LDFLAGS += -FFrameworks/_rootless
endif

ifeq ($(THEOS_PACKAGE_SCHEME),roothide)
NetworkSnifferPrefs_CFLAGS += -FFrameworks/_roothide
NetworkSnifferPrefs_LDFLAGS += -FFrameworks/_roothide
else
NetworkSnifferPrefs_CFLAGS += -FFrameworks
NetworkSnifferPrefs_LDFLAGS += -FFrameworks
endif

NetworkSnifferPrefs_EXTRA_FRAMEWORKS += AltList

include $(THEOS_MAKE_PATH)/bundle.mk
