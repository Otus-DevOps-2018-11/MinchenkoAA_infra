# MinchenkoAA_infra
MinchenkoAA Infra repository

ДЗ №3
способ подключения к someinternalhost в одну команду из рабочего устройства

ssh -i ~/.ssh/miaa -A -t miaa@35.205.221.94 ssh 10.166.0.2

Где:

    miaa — имя пользователя
    35.205.221.94 — bastion
    10.166.0.2 — someinternalhost

вариант решения для подключения из консоли при помощи команды вида ssh someinternalhost из локальной консоли рабочего устройства, чтобы подключение выполнялось по алиасу someinternalhost

Добавляем в ~/.ssh/config

Host bastion
  Hostname 35.205.221.94
  User miaa
  Port 22
  IdentityFile /home/aleksandr/.ssh/miaa

Host someinternalhost
  User miaa
  ProxyCommand ssh -A bastion -W 10.166.0.2:22

Выполнение команды

aleksandr@aleksandr-VirtualBox:~/.ssh$ ssh someinternalhost 
Welcome to Ubuntu 16.04.5 LTS (GNU/Linux 4.15.0-1025-gcp x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

  Get cloud support with Ubuntu Advantage Cloud Guest:
    http://www.ubuntu.com/business/services/cloud

0 packages can be updated.
0 updates are security updates.


Last login: Sat Dec 29 16:47:12 2018 from 10.132.0.2
miaa@someinternalhost:~$ 

подключение к vpn

bastion_IP = 35.205.221.94
someinternalhost_IP = 10.166.0.2

