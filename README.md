gnome
=====

GNOME SlackBuild

[ALREADY PROVIDED BY SLACKWARE]
glib2
gtk+2
gtk+3
gstreamer
gst-plugins-base
polkit
polkit-gnome
gobject-introspection
pygobject
gsettings-desktop-schemas
libwnck
libgnome-keyring
gnome-keyring
GConf
sg3_utils
libatasmart
udisks
libproxy
glib-networking
libsoup
libtasn1
upower
gnome-keyring
libcanberra
gvfs
seamonkey (Only for building, use seamonkey-solibs for runtime)
pygtk
icu4c
gnome-icon-theme
mozilla-nss
js185
gucharmap
[/ALREADY PROVIDED BY SLACKWARE]

[EXTERNAL LIBS]
setuptools
rarian
libdaemon
avahi
nss-mdns
usbmuxd
libimobiledevice
ifuse
json-c
speex
pulseaudio
alsa-plugins
orc
libiec61883
libdc1394
libavc1394
libdv
libshout
gst-plugins-good - add GConf and pulseaudio support
gst-python
liboauth
python-isodate
python-rdflib
xapian-core
heimdal-libraries
libnice
telepathy-glib
telepathy-logger
telepathy-mission-control
farstream
telepathy-farstream
telepathy-gabble
geoclue
webkitgtk
itstool
[/EXTERNAL LIBS]

[BUILD TOOLKIT] (can be removed after GNOME3 building finished)
gnome-common
[/BUILD TOOLKIT] (can be removed after GNOME3 building finished)

[GNOME LIBS]
json-glib
dconf
libdbusmenu
libunique
libwnck3 (Renamed to libwnck3 because slackware already have libwnck v2)
librest
zeitgeist
libgdata
cogl
clutter
clutter-gtk
clutter-gst
libchamplain
mx
libgusb
colord
libwacom
cantarell-fonts
pygobject3
gjs
libgee
libgweather
libgnomekbd
notification-daemon
libgtop
gtk-engines
gtk3-engines
gtk-murrine-engine
gtk-unico-engine
gnome-icon-theme-symbolic
gnome-mime-data
gnome-online-accounts
evolution-data-server
caribou
accountsservice
exempi
[/GNOME LIBS]

[GNOME BASE]
gnome-menus
gnome-desktop
zenity
mutter
metacity
folks
gnome-panel
gnome-python
nautilus
nautilus-sendto
gnome-bluetooth
gnome-video-effects
cheese
empathy
gnome-themes-standard
gnome-backgrounds
gnome-settings-daemon
gnome-applets
gnome-control-center
gnome-shell
gnome-session
[/GNOME BASE]

[GNOME APPS - OPTIONAL]
{vte} (Note: If you want you can upgrade it to match GNOME 3.4)
gnome-terminal
file-roller
libburn
libisofs
libisoburn
totem-pl-parser
brasero
evince
gthumb
libpeas
gtksourceview
gedit
python-logilab-common
python-logilab-astng
pylint
totem
gnome-power-manager
epiphany
epiphany-extensions
gmtk
gnome-mplayer
glade3
gnome-media
gnome-disk-utility
pam (Only for gnome-screensaver and GDM)
gnome-screensaver
yelp-xsl
yelp
pyxdg
at-spi2-core
at-spi2-atk
orca
muffin
lxml
cinnamon
vala
