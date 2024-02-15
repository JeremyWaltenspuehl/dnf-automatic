#/bin/bash
dnf install dnf-automatic -y
sed -i 's/apply_updates = no/apply_updates = yes/' /etc/dnf/automatic.conf
sed -i 's/reboot = never/reboot = when-needed/' /etc/dnf/automatic.conf
systemctl enable dnf-automatic.timer && systemctl start dnf-automatic.timer
dnf-automatic
