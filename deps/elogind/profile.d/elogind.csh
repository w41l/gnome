#!/bin/csh

# Use elogind to setup XDG runtime directory:
if ( ! $?XDG_RUNTIME_DIR ) then
    setenv XDG_RUNTIME_DIR /run/user/`id -u`
    mkdir -p $XDG_RUNTIME_DIR
    chown $USER $XDG_RUNTIME_DIR
    chmod 700 $XDG_RUNTIME_DIR
endif

if ( `id -u` >= 1000 ) then
    setenv TMP ${XDG_RUNTIME_DIR}
    setenv TMPDIR ${XDG_RUNTIME_DIR}
    setenv TEMP ${XDG_RUNTIME_DIR}
endif
