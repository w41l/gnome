
config() {
  NEW="$1"
  OLD="$(dirname $NEW)/$(basename $NEW .new)"
  # If there's no config file by that name, mv it over:
  if [ ! -r $OLD ]; then
    mv $NEW $OLD
  elif [ "$(cat $OLD | md5sum)" = "$(cat $NEW | md5sum)" ]; then
    # toss the redundant copy
    rm $NEW
  fi
  # Otherwise, we leave the .new copy for the admin to consider...
}

config etc/pam.d/gdm-autologin.new
config etc/pam.d/gdm-fingerprint.new
config etc/pam.d/gdm-launch-environment.new
config etc/pam.d/gdm.new
config etc/pam.d/gdm-password.new
config etc/pam.d/gdm-pin.new
config etc/pam.d/gdm-smartcard.new

if [ -x /usr/bin/rarian-sk-update ]; then
  /usr/bin/rarian-sk-update 1> /dev/null 2> /dev/null
fi

if [ -x /usr/bin/update-desktop-database ]; then
  /usr/bin/update-desktop-database -q /usr/share/applications >/dev/null 2>&1
fi

if [ -x /usr/bin/glib-compile-schemas ]; then
  /usr/bin/glib-compile-schemas /usr/share/glib-2.0/schemas >/dev/null 2>&1
fi

if ps acx | grep -q "dbus-daemon"; then
  /etc/rc.d/rc.messagebus restart
fi
