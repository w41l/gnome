GNOME 3 WLSBuild
================

These packages were provided by Slackware. Just make sure they're
already installed:

* glib2
* gtk+2
* gtk+3
* libsigc++
* glibmm
* cairomm
* pangomm
* atkmm
* gtkmm3
* at-spi2-core
* at-spi2-atk
* pulseaudio
* gstreamer
* gst-plugins-base
* gst-plugins-good
* polkit
* polkit-gnome
* gobject-introspection
* pygobject
* pygobject3
* gsettings-desktop-schemas
* libgnome-keyring
* gnome-keyring
* GConf
* dconf
* sg3_utils
* libatasmart
* udisks
* eudev
* libgudev
* libproxy
* glib-networking
* libsoup
* libtasn1
* gnome-keyring
* libcanberra
* gvfs
* pygtk
* icu4c
* gnome-icon-theme
* gnome-themes-standard
* mozilla-nss
* js185
* gucharmap
* sane
* bash-completion
* itstool

SBo Packages
============

Some GNOME package need packages from SBo. Some of SBo packages has
been imported, others still in testing. Maybe you can use ponce SBo git repo to
get most current packages to satisfy GNOME dependency.

* avahi
* colord
* colord-gtk
* cracklib
* exempi
* farstream
* gnome-common
* gnome-menus
* gsssdp
* gst-plugins-ugly
* gst-plugins-bad
* json-glib
* krb5
* libdaemon
* libgee
* libgusb
* libnice
* liboauth
* libpeas
* libpwquality
* libxkbcommon
* python3
* py3cairo
* pygobject3-python3
* pyxdg
* rest
* telepathy-glib
* vte3
* webkit2gtk
* yelp-xsl
* yelp-tools
* zenity

BUILDING
========

The building procedure is simple:

Clone this repository

```
git clone https://github.com/w41l/gnome.git
```

Change directory into gnome and run:

```
./gnome3.SlackBuild
```

By default the build script WILL NOT upgrade already installed
   packages with same name. To "ALWAYS" install or upgrade the package,
   run the build script with environment variable:

```
UPGRADE_PACKAGES="always" ./gnome3.SlackBuild
```

To install/upgrade single module (ie. just the 'deps'), run:

```
./gnome3.SlackBuild deps
```

To install/upgrade two or more modules, run:

```
./gnome3.SlackBuild deps,base
```

6. To install/upgrade single package or several packages, run:

```
./gnome3.SlackBuild deps pkg1
(or)
cd deps/pkg1 && ./pkg1.SlackBuild
(or)
./gnome3.SlackBuild deps pkg1:pkg2:pkg3
```

Use 'xwmconfig' to use GNOME session for startx.

After that you should reboot your system, and try login to GNOME.

WARNING
=======

The build will replace/upgrade Slackware upower with newer version.

You have been warned.

GNOME 3 WLSBuild is still in heavy development stage. Feel free to
contact me if you have problem on building GNOME3 using my
SlackBuild.
