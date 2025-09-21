UBIQUITY_VERSION = 25.04.4 
UBIQUITY_SOURCE  = ubiquity_$(UBIQUITY_VERSION).tar.xz 
UBIQUITY_SITE = https://launchpad.net/ubuntu/+archive/primary/+sourcefiles/ubiquity/25.04.4
UBIQUITY_CONFIG_OPTS = --disable-shared
UBIQUITY_AUTORECONF = YES
UBIQUITY_AUTORECONF_OPTS = -f -i
UBIQUITY_AUTOPOINT = YES
$(eval $(autotools-package))
