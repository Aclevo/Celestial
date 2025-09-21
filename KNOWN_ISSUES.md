##Two errors occur at the configuration stage of ubiquity
=========================================================
 * ./configure: line 15233: syntax error near unexpected token `0.40.0,'
 * ./configure: line 15233: `IT_PROG_INTLTOOL(0.40.0, no-xml)'
## Booting on EFI hardware
--------------------------
* When ISO image is booted from UEFI pc, the grub command line drops instead of displaying the boot option. It can be fixed manually by typing 'configfile /boot/grub/grub.cfg'
