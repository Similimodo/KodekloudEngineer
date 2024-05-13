#linux ntp setup

ssh banner@stapp03
sudo su -

#install ntp
yum install ntp -y

#go to 
vi /etc/ntp.conf and add your server there server 1.africa.pool.ntp.org

#enable, start, and see the status of ntp
systemctl enable ntpd; systemctl start  ntpd; systemctl status ntpd

#to validate run
ntpstat