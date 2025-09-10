**This is the official base source code of Celestial Linux**
It uses buildroot-2025.02.5.

To build, install gcc, g++, and make to build from source.

in the command line, navigate to the buildroot folder, and run:

'''
make menuconfig
'''

then run 

'''
make
'''

after this you will have an ISO image in bin/images, which you can use to run Celestial with QEMU, Virtualbox or any other hypervisor that you like

'''
qemu-system-x86_64 \
  -cdrom bin/images/disk.iso \
  -boot d \
  -enable-kvm \
  -m 1024 \
  -net nic -net user
'''
This will allow you to play around with the base system before you build it. We recommend you save a working version before adding/subtracting features.
