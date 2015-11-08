# Install new info files
if [ -d usr/info ]; then
  /usr/bin/install-info usr/info/libgtop2.info.gz usr/info/dir >/dev/null 2>&1
fi
