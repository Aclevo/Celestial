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

$(eval $(cmake-package))

