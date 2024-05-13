# APP Server 1
ssh tony@stapp01
sudo su

useradd -d /home/siva -e 2024-04-15 -s /bin/bash  -m siva
cat /etc/passwd


# Explanation of the command and options used:

# sudo useradd -d /home/siva -e 2024-04-15 -s /bin/bash -c "Siva User" -m siva

# sudo: Run the command with superuser privileges.
# useradd: Command to add a new user.
# -d /home/siva: Specifies the home directory for the user. In this case, it's set to /home/siva.
# -e 2024-04-15: Sets the expiry date for the user account to April 15, 2024.
# -s /bin/bash: Sets the default shell for the user to /bin/bash.
# -c "Siva User": Provides a comment or description for the user. In this case, it's set to "Siva User".
# -m: Creates the user's home directory if it doesn't already exist.
# siva: Specifies the username, ensuring it's in lowercase as requested.