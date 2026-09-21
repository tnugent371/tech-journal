whoami /all > C:\temp\01_user.txt
tasklist > C:\temp\02_processes.txt
netstat -ano > C:\temp\03_connections.txt
sc query > C:\temp\04_services.txt
net user > C:\temp\05_users.txt
net localgroup > C:\temp\06_groups.txt
net localgroup Administrators > C:\temp\07_admins.txt
ipconfig /all > C:\temp\08_network.txt
netsh advfirewall show allprofiles > C:\temp\09_firewall.txt
arp -a > C:\temp\10_arp.txt
net session > C:\temp\11_smb.txt
systeminfo > C:\temp\12_system.txt
