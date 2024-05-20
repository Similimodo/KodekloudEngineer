# APP Server 3
ssh banner@stapp03
sudo su
# Set the user owner and group owner of the file to root
chown root:root /etc/hostname

# Set read-only permissions for others
chmod o=r /etc/hostname

# Remove all permissions for the user 'anita'
setfacl -x u:anita /etc/hostname

# Set read-only permission for the user 'rod'
setfacl -m u:rod:r /etc/hostname

#To verify
getfacl /etc/hostname
