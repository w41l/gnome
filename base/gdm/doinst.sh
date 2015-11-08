
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

config etc/gdm/custom.conf.new

if [ -d usr/share/help ]; then
  /usr/bin/rarian-sk-update >/dev/null 2>&1
fi

if [ -d usr/share/applications ]; then
  /usr/bin/update-desktop-database -q /usr/share/applications >/dev/null 2>&1
fi

if [ -d usr/share/glib-2.0/schemas ]; then
  /usr/bin/glib-compile-schemas usr/share/glib-2.0/schemas >/dev/null 2>&1
fi
