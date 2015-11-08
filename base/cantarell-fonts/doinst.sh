
if [ -d usr/share/fonts/cantarell ]; then
    /usr/bin/fc-cache -f -s >/dev/null 2>&1
fi
