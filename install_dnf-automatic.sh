#/bin/bash
dnf install dnf-automatic -y
sed -i 's/reboot = never/reboot = when-needed/' /etc/dnf/automatic.conf
sed -i 's/apply_updates = no/apply_updates = yes/' /etc/dnf/automatic.conf
sed -i 's/emit_via = stdio/emit_via = email/' /etc/dnf/automatic.conf
sed -i 's/email_from = root@example.com/email_from = sysacc@itcompro.com/' /etc/dnf/automatic.conf
sed -i 's/email_to = root/email_to = support@itcompro.com/' /etc/dnf/automatic.conf
sed -i 's/email_host = localhost/email_host = 172.16.10.26/' /etc/dnf/automatic.conf
systemctl enable dnf-automatic.timer && systemctl start dnf-automatic.timer
dnf-automatic
