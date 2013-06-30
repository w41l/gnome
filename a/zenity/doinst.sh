

if [ -x /usr/bin/update-desktop-database ]; then
  /usr/bin/update-desktop-database 1> /dev/null 2> /dev/null
fi

if [ -e /usr/share/icons/hicolor/icon-theme.cache ]; then
  if [ -x /usr/bin/gtk-update-icon-cache ]; then
    /usr/bin/gtk-update-icon-cache -f -t /usr/share/icons/hicolor 1>/dev/null 2>/dev/null
  fi
fi

if [ -x /usr/bin/rarian-sk-update ]; then
  /usr/bin/rarian-sk-update 1> /dev/null 2> /dev/null
fi

