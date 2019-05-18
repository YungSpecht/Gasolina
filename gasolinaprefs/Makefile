ARCHS = armv7 arm64 arm64e

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = GasolinaPrefs
GasolinaPrefs_FILES = GLARootListController.m
GasolinaPrefs_INSTALL_PATH = /Library/PreferenceBundles
GasolinaPrefs_FRAMEWORKS = UIKit
GasolinaPrefs_PRIVATE_FRAMEWORKS = Preferences
GasolinaPrefs_EXTRA_FRAMEWORKS = Cephei CepheiPrefs

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/GasolinaPrefs.plist$(ECHO_END)
