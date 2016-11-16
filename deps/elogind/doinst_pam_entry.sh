
if [ -r /etc/pam.d/system-session ]; then
  echo "WARNING: Spamming /etc/pam.d/system-session with pam_systemd.so"
  if ! grep "pam_systemd" /etc/pam.d/system-session >/dev/null; then
    echo "session   optional    pam_systemd.so" >> /etc/pam.d/system-session
  fi
fi
