# fail2ban
Инструкция к установке Fail2ban

# Выгрузка с Гит
apt install git -y

git clone git@github.com:Zikaf/fail2ban.git

cd fail2ban

chmod +x fail2ban.sh

./fail2ban.sh

# Проверка 
fail2ban-client status sshd

# Удаление fail2ban
service fail2ban stop

apt-get remove --purge fail2ban -y

rm -rf /etc/fail2ban
