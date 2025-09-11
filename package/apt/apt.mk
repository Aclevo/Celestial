APT_VERSION = 3.1.5
APT_SOURCE = $(APT_VERSION).tar.gz
APT_SITE = https://github.com/Debian/apt/archive/refs/tags
APT_LICENSE = GPL-2.0
APT_INSTALL_TARGET = YES

# Fix for Berkeley DB detection in CMake
APT_CONF_OPTS = \
    -DWITH_DOC=OFF \
    -DWITH_TESTS=OFF \
    -DUSE_NLS=OFF \
    -DBERKELEY_INCLUDE_DIRS=$(STAGING_DIR)/usr/include \
    -DBERKELEY_LIBRARIES=$(STAGING_DIR)/usr/lib/libdb.so
define APT_USERS
	_apt -1 _apt -1 * - - - _apt sandbox
endef
define APT_POST_INSTALL_TARGET_HOOK
	mkdir -p $(TARGET_DIR)/usr/share/keyrings\
	 $(TARGET_DIR)/etc/apt/apt.conf.d $(TARGET_DIR)/apt/authconf.d
	$(INSTALL) -D -m 0755 $(PWD)/package/apt/sources.list\
	 $(TARGET_DIR)/etc/apt/sources.list
	$(INSTALL) -D -m 0755 $(PWD)/package/apt/keyrings/*\
	 $(TARGET_DIR)/usr/share/keyrings
endef
APT_POST_INSTALL_TARGET_HOOKS+=APT_POST_INSTALL_TARGET_HOOK
$(eval $(cmake-package))

