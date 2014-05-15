TARGET := iphone:clang
ARCHS = armv7 arm64

include theos/makefiles/common.mk

TWEAK_NAME = SafariDefaultKeyboard
SafariDefaultKeyboard_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard; killall -9 backboardd; killall -9 MobileSafari"
SUBPROJECTS += goawayperiodbutton
include $(THEOS_MAKE_PATH)/aggregate.mk
