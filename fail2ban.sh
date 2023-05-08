#!/bin/bash

# Установка
apt update
apt install fail2ban -y

# Создание директории
mkdir -p /var/log_fail2ban/
touch /var/log_fail2ban/vsftpd.log
touch /var/log_fail2ban/postgresql.log
touch /var/log_fail2ban/mysqld.log
touch /var/log_fail2ban/mongod.log
touch /var/log_fail2ban/samba.log
touch /var/log_fail2ban/apache2.log
touch /var/log_fail2ban/nginx.log
touch /var/log_fail2ban/openvpn.log
touch /var/log/auth.log

# Выдача прав
chmod 644 /var/log/auth.log
chown root:adm /var/log/auth.log
# Настройка конфига
cp jail.local /etc/fail2ban/jail.local

# Запуск и проверка fail2ban
systemctl enable fail2ban
systemctl start fail2ban
systemctl status fail2ban
