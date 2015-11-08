GNOME 3 WLSBuild
================

These packages were provided by Slackware. Just make sure they're
already installed:

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
* pygobject3
* gsettings-desktop-schemas
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
* gnome-keyring
* libcanberra
* gvfs
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

WARNING
=======

The build script will install eudev package which is needed by
gnome-bluetooth, which is needed by gnome-control-center.
Eudev is systemd-compatible udev, developed by Gentoo. Eudev purpose is
to provide compatible systemd API on system/distribution without systemd.
This package will replace Slackware's default udev binaries.

I have tested booting my Slackware64-current with eudev without
any error or failure. But, even though my system is booted normally
with eudev, still, I cannot guarantee that yours will be OK.

You have been warned.

BUILDING
========

The building procedure is simple:

1. Clone this repository
   git clone https://github.com/w41l/gnome.git

2. Change into gnome and run:
   ./gnome3.SlackBuild

3. By default the build script WILL NOT upgrade already installed
   packages with same name. To "ALWAYS" install or upgrade the package,
   run the build script with environment variable:
   UPGRADE_PACKAGES="always" ./gnome3.SlackBuild

4. To install/upgrade single module (ie. just the 'deps'), run:
   ./gnome3.SlackBuild deps
   
5. To install/upgrade two or more modules, run:
   ./gnome3.SlackBuild deps,base

6. To install/upgrade single package or several packages, run:
   ./gnome3.SlackBuild deps pkg1
   (or)
   ./gnome3.SlackBuild deps pkg1:pkg2:pkg3

7. Use 'xwmconfig' to use GNOME session for startx.

8. After that you should reboot your system, and try login to GNOME.

Feel free to contact me if you have problem on building GNOME3 using my
SlackBuild.
