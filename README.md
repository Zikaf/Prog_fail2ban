# fail2ban
Инструкция к установке Fail2ban

# Выгрузка с Гит
```
cd
apt update
apt install git -y
git clone https://github.com/Zikaf/Prog_fail2ban.git
cd fail2ban
chmod +x fail2ban.sh
./fail2ban.sh
cd
rm -rf ~/fail2ban
```
# Проверка
```
fail2ban-client status sshd
```
# Удаление fail2ban
```
systemctl stop fail2ban 
apt remove --purge fail2ban -y
rm -rf /etc/fail2ban
rm -rf /var/log_fail2ban
```
