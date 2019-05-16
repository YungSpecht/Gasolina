ARCHS = armv7 arm64

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Gasolina
Gasolina_FILES = Tweak.xm
Gasolina_EXTRA_FRAMEWORKS += Cephei


include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 com.apple.springboard"
SUBPROJECTS += gasolinaprefs
include $(THEOS_MAKE_PATH)/aggregate.mk
