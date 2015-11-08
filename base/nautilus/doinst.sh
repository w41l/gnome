
if [ -x /usr/bin/rarian-sk-update ]; then
  /usr/bin/rarian-sk-update 1> /dev/null 2> /dev/null
fi

if [ -d usr/share/applications ]; then
  /usr/bin/update-desktop-database -q usr/share/applications >/dev/null 2>&1
fi

if [ -d usr/share/mime ]; then
  /usr/bin/update-mime-database usr/share/mime >/dev/null 2>&1
fi

if [ -d usr/share/glib-2.0/schemas ]; then
  /usr/bin/glib-compile-schemas usr/share/glib-2.0/schemas >/dev/null 2>&1
fi

if [ -f /usr/share/applications/Thunar-folder-handler.desktop ]; then
  echo "Disabling Thunar GNOME folder handling."
  mv -f /usr/share/applications/Thunar-folder-handler.desktop \
   /usr/share/applications/Thunar-folder-handler.desktop.disabled
fi;

