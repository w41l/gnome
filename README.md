gnome
=====

GNOME SlackBuild

Please read README.TXT for complete GNOME3 packages list.

These packages were provided by Slackware. Just make sure they're already
installed:

* glib2
* gtk+2
* gtk+3
* at-spi2-core
* at-spi2-atk
* gstreamer
* gst-plugins-base
* polkit
* polkit-gnome
* gobject-introspection
* pygobject
* gsettings-desktop-schemas
* libwnck
* libgnome-keyring
* gnome-keyring
* GConf
* dconf
* sg3_utils
* libatasmart
* udisks
* libproxy
* glib-networking
* libsoup
* libtasn1
* upower
* gnome-keyring
* libcanberra
* gvfs
* seamonkey (For building, seamonkey-solibs for runtime)
* pygtk
* icu4c
* gnome-icon-theme (+ gnome-icon-theme-symbolic)
* gnome-themes-standard
* mozilla-nss
* js185
* gucharmap
* sane
* bash-completion
* itstool

Next step is install the all GNOME3 external dependencies. You can find those at
http://www.slackbuilds.org/

After that you can build your GNOME 3.8 using my SlackBuild. The building
procedure is simple. You can find which version and the download URL in .info
file in every package directory. Just download the source tarball into the
package directory. Then just run ./PKGNAME.SlackBuild.

You can find the .txz package in /tmp (if you're not change the $TMP variable).
To install or upgrade already installed PKGNAME in you system, just run:
upgradepkg --install-new --reinstall /tmp/PKGNAME-VERSION-ARCH-1_wls.txz

After that you should reboot your system, and try login to GNOME.

Feel free to contact me if you have problem on building GNOME3 using my
SlackBuild.
