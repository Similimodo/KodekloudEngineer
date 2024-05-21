#App Server 2
ssh steve@stapp02
sudo su

# install selinux
yum install -y selinux*

# Change from enforcing to disabled 
sed -i 's/SELINUX=enforcing/SELINUX=disabled/' /etc/selinux/config

# to verify
cat /etc/selinux/config