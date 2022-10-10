Nscd
APP Server 1
ssh tony@stapp01
sudo su
sudo yum install -y nscd
systemctl enable nscd; systemctl start nscd; systemctl status nscd

APP Server 2
ssh steve@stapp02
sudo su
sudo yum install -y nscd
systemctl enable nscd; systemctl start nscd; systemctl status nscd

APP Server 3
ssh banner@stapp03
sudo su
sudo yum install -y nscd
systemctl enable nscd; systemctl start nscd; systemctl status nscd

squid
APP Server 1
ssh tony@stapp01
sudo su
sudo yum install -y squid
systemctl enable squid; systemctl start squid; systemctl status squid

APP Server 2
ssh steve@stapp02
sudo su
sudo yum install -y squid
systemctl enable squid; systemctl start squid; systemctl status squid

APP Server 3
ssh banner@stapp03
sudo su
sudo yum install -y squid
systemctl enable squid; systemctl start squid; systemctl status squid

sudo yum install -y squid; systemctl enable squid; systemctl start squid; systemctl status squid