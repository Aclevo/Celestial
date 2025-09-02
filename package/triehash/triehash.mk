TRIEHASH_VERSION = 0.3-3
TRIEHASH_SOURCE = $(TRIEHASH_VERSION).tar.gz
TRIEHASH_SITE = https://github.com/julian-klode/triehash/archive/refs/tags/debian
TRIEHASH_LICENSE = MIT
TRIEHASH_INSTALL_TARGET = NO
TRIEHASH_INSTALL_STAGING = YES
define TRIEHASH_BUILD_CMDS
	#Triehash may be optional for apt ,but required to be installed somewhere
endef
define TRIEHASH_INSTALL_STAGING_CMDS
#	$(INSTALL)
endef
