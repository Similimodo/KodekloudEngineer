#Ques 1: Create a group named nautilus_admin_users in all App servers in Stratos Datacenter.
#APP Server 1

#login
ssh tony@stapp01

#Assume Root access
sudo su -

#Create a group
groupadd nautilus_admin_users

#Question 2: Add the user stark to nautilus_admin_users group in all App servers. (create the user if doesn't exist).
#Create user and add them to the group
useradd -G nautilus_admin_users stark

#To verify run
cat /etc/passwd |grep stark
id stark

#APP Server 2

#login
ssh steve@stapp02

#Assume Root access
sudo su -

#Create a group
groupadd nautilus_admin_users

#Question 2: Add the user stark to nautilus_admin_users group in all App servers. (create the user if doesn't exist).
#Create user and add them to the group
useradd -G nautilus_admin_users stark

#To verify run
cat /etc/passwd |grep stark
id stark

#APP Server 3

#login
ssh banner@stapp03

#Assume Root access
sudo su -

#Create a group
groupadd nautilus_admin_users

#Question 2: Add the user stark to nautilus_admin_users group in all App servers. (create the user if doesn't exist).
#Create user and add them to the group
useradd -G nautilus_admin_users stark

#To verify run
cat /etc/passwd |grep stark
id stark

