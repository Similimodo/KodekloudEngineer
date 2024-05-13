# APP Server 1
ssh tony@stapp01
sudo su
yum install -y vim
vim /etc/ssh/sshd_config
PermitRootLogin no
systemctl restart sshd

# APP Server 2
ssh steve@stapp02
sudo su
yum install -y vim
vim /etc/ssh/sshd_config
PermitRootLogin no
systemctl restart sshd

# APP Server 3
ssh banner@stapp03
sudo su
yum install -y vim
vim /etc/ssh/sshd_config
PermitRootLogin no
systemctl restart sshd
