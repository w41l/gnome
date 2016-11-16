
if [ -r /etc/pam.d/system-session ]; then
  echo "WARNING: Spamming /etc/pam.d/system-session with pam_elogind.so"
  if ! grep "pam_elogind" /etc/pam.d/system-session >/dev/null; then
    echo "session   optional    pam_elogind.so" >> /etc/pam.d/system-session
  fi
fi
