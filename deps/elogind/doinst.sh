# Add pam_elogind.so to /etc/pam.d/system-session

if [ -r /etc/pam.d/system-session ]; then
    if ! grep "elogin" /etc/pam.d/system-session >/dev/null; then
        echo "session    optional    pam_elogind.so" >> /etc/pam.d/system-session
    fi
fi
