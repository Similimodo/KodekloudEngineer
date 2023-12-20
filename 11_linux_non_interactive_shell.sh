#create a user named jim with a non-interactive shell on the App Server 2.
#APP Server 2

#login
ssh steve@stapp02

#Assume Root access
sudo su -

#Create a user with non-interactive shell
useradd  jim -s /sbin/nologin

#To verify run
cat /etc/passwd |grep jim
id jim


#Commit to Git
git add .; git commit -m "initial"; git push
