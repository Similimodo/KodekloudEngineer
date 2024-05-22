#!/bin/bash

# Define server login details
# Associative array where keys are server names and values are "username:password"
declare -A servers
servers=(
  [stapp01]="tony:Aaabc"
  [stapp02]="steve:Baabc"
  [stapp03]="banner:Caabc"
)

# Define the timezone to be set
timezone="Atlantic/St_Helena"

# Loop through each server and change the timezone
for server in "${!servers[@]}"; do
  user_pass="${servers[$server]}"  # Get the username:password string for the current server
  user="${user_pass%:*}"           # Extract the username from the string
  password="${user_pass#*:}"       # Extract the password from the string

  echo "Updating timezone on $server..."

  # Use sshpass to provide the password for SSH login
  # Disable strict host key checking to avoid confirmation prompts
  sshpass -p "$password" ssh -o StrictHostKeyChecking=no "$user@$server" "
    # Use sudo to switch to root user and execute the commands
    echo '$password' | sudo -S su -c 'timedatectl set-timezone $timezone && timedatectl status'
  "

  # Check if the previous command executed successfully
  if [ $? -eq 0 ]; then
    echo "Timezone updated successfully on $server."
  else
    echo "Failed to update timezone on $server."
  fi
done
