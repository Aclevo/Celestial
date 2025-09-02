CELESTIAL_VERSION = 0.0.1
CELESTIAL_SOURCE = celestial-installer.tar.gz
CELESTIAL_SITE = https://celinux.soon.it/downloads
CELESTIAL_LICENSE = GPL
CELESTIAL_LICENSE_FILES = LICENSE
CELESTIAL_CONFIG_SCRIPTS = celestial-config
CELESTIAL_DEPENDENCIES = 
define CELESTIAL_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) build
endef
define CELESTIAL_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/bin/celestial-installer $(TARGET_DIR)/usr/sbin
#TODO:	add an installer script to init.d
endef
$(eval $(generic-package))
