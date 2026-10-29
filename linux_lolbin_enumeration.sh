#!/bin/bash

mkdir -p /tmp/enumeration
cd /tmp/enumeration

id > 01_id.txt 2>&1

ps aux > 02_ps_aux.txt 2>&1

ss -tulpen > 03_ss.txt 2>&1

systemctl list-units --type=service --state=running > 04_systemctl_running_services.txt 2>&1

getent passwd > 05_getent_passwd.txt 2>&1

getent group > 06_getent_group.txt 2>&1

getent group sudo > 07_getent_group_sudo.txt 2>&1

ip address show > 08_ip_address.txt 2>&1

sudo iptables -S > 09_iptables.txt 2>&1

ip neigh show > 10_ip_neigh.txt 2>&1

sudo smbstatus > 11_smbstatus.txt 2>&1

uname -a > 12_uname.txt 2>&1

sudo -l > 13_sudo_l.txt 2>&1

w > 14_w.txt 2>&1

history > 15_history.txt 2>&1

env > 16_env.txt 2>&1

find / -perm -4000 2>/dev/null > 17_suid_sgid.txt 2>&1

sudo getcap -r / 2>/dev/null > 18_getcap.txt 2>&1

crontab -l > 19_crontab.txt 2>&1

ps aux > 20_ps_aux.txt 2>&1

dpkg-query -W > 21_dpkg_query.txt 2>&1

uname -a > 22_uname.txt 2>&1

findmnt > 23_findmnt.txt 2>&1

ls -al ~/.ssh > 24_ssh_directory.txt 2>&1

ls -l /etc/passwd > 25_passwd_permissions.txt 2>&1

sudo journalctl --since '7 days ago' > 26_journalctl.txt 2>&1

docker ps -a > 27_docker_ps.txt 2>&1

getenforce > 28_getenforce.txt 2>&1

cat /etc/exports > 29_nfs_exports.txt 2>&1

hostnamectl > 30_hostnamectl.txt 2>&1

find /etc /usr/local /opt /var/tmp /tmp -xdev \( -type f -o -type d \) -perm -0002 -print 2>/dev/null > 31_world_writable.txt 2>&1

sudo lsof -nP +L1 > 32_lsof_deleted_files.txt 2>&1
