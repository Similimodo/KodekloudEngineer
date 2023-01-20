#Linux Postfix Troubleshooting

ssh groot@stmail01

sudo su -
#check postfix status
systemctl status postfix

#check postfix logs
journalctl -xe -u postfix

#go to the configuration file and search for localhost and comment that line out
vim /etc/postfix/main.cf

#restart the postfix service
systemctl restart postfix

#check postfix status
systemctl status postfix