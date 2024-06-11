ssh tony@stapp01
sudo su

# open a new terminal and make sure its in the jumphost
scp /home/thor/nautaulis tony@stapp01:/tmp

# return to the application server 1 terminal
cp /tmp/nautaulis /etc/motd
