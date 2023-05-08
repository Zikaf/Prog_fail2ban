#!/bin/bash

# Установка
apt update
apt install rsyslog -y
apt install fail2ban -y

# Настройка конфига
cp jail.local /etc/fail2ban/jail.local

# Запуск и проверка fail2ban
systemctl enable fail2ban
systemctl start fail2ban
systemctl status fail2ban
