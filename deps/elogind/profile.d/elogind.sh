#!/bin/sh

# Use elogind to setup user XDG runtime directory
if [ "$XDG_RUNTIME_DIR" = "" ]; then
  XDG_RUNTIME_DIR=/run/user/$(id -u)
  mkdir -p $XDG_RUNTIME_DIR
  chown $USER $XDG_RUNTIME_DIR
  chmod 700 $XDG_RUNTIME_DIR
fi
export XDG_RUNTIME_DIR

if [ "$(id -u)" -ge "1000" ]; then
  export TMP="${XDG_RUNTIME_DIR}"
  export TMPDIR="${XDG_RUNTIME_DIR}"
  export TEMP="${XDG_RUNTIME_DIR}"
fi
