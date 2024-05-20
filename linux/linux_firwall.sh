ssh banner@stapp03

# To open all incoming connections on port 8087/tcp and assign the zone as public using firewalld, 
sudo firewall-cmd --zone=public --add-port=8087/tcp --permanent
sudo firewall-cmd --reload
