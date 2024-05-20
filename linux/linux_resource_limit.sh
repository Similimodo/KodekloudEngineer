ssh natasha@ststor01

sudo su 

# open the /etc/security/limits.conf
vi /etc/security/limits.conf

# add the following 
nfsuser   soft   nproc    1025
nfsuser   hard   nproc    2026


# To verify
cat /etc/security/limits.conf | grep nproc | grep -v ^#
