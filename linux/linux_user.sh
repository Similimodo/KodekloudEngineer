# APP Server 2
ssh steve@stapp02
sudo su

useradd -M john
cat /etc/passwd | grep john


# Explanation:

# sudo: This command is used to run the following command with superuser privileges, as creating a new user typically requires administrative permissions.
# useradd: This command is used to add a new user to the system.
# -M: This option specifies that a home directory should not be created for the user. By default, when you create a new user, a home directory is also created. Using the -M option prevents the creation of the home directory.
