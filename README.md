![logo](https://github.com/Aclevo/Celestial/blob/main/assets/png/Celestial-side.png)

**This is the official base source code of Celestial Linux by Aclevo**.Fork of https://gitlab.com/nodiscc/debian-live-config
The documentation on configuring this project can be found here: https://debian-live-config.readthedocs.io/en/latest/custom.html
## Building from source
--------------------------
To build from source you need to have the debian installed,root privilages and cosmic-epoch debian package installed in `config/packages.chroot`.The package can be found [here](https://gofile.io/d/ABXzTl). After getting everything you need, run:<br/>
`dpkg-name config/packages.chroot/cosmic-epoch-1.0.2.deb`<br/>
`sudo apt install -y make`<br/>
`sudo make install_buildenv`<br/>
`sudo lb config`<br/>
`sudo lb bootstrap`<br/>
`sudo lb chroot`<br/>
`sudo lb installer`<br/>
`sudo lb binary`
