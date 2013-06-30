
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

config etc/colord.conf.new

if [ -x usr/bin/glib-compile-schemas -a -d usr/share/glib-2.0/schemas ]; then
    /usr/bin/glib-compile-schemas /usr/share/glib-2.0/schemas >/dev/null 2>&1
fi
