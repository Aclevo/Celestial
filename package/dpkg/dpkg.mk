DPKG_VERSION = 1.22.21
DPKG_CONF_OPTS = --disable-shared
DPKG_SOURCE = dpkg_$(DPKG_VERSION).tar.xz
DPKG_SITE =  https://snapshot.debian.org/archive/debian-debug/20250702T022407Z/pool/main/d/dpkg
DPKG_LICENSE = GPL-2.0
DPKG_INSTALL_TARGET = YES
DPKG_CONFIG_SCRIPTS = configure
$(eval $(autotools-package))
