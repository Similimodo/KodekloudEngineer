#!/bin/bash

# Define server login details
declare -A servers
servers=(
  [stapp01]="tony:Aaabc"
  [stapp02]="steve:Baabc"
  [stapp03]="banner:Caabc"
)

# Define the timezone
timezone="Atlantic/St_Helena"

# Loop through each server and change the timezone
for server in "${!servers[@]}"; do
  user_pass="${servers[$server]}"
  user="${user_pass%:*}"
  password="${user_pass#*:}"

  echo "Updating timezone on $server..."

  sshpass -p "$password" ssh -o StrictHostKeyChecking=no "$user@$server" "
    echo '$password' | sudo -S su -c 'timedatectl set-timezone $timezone && timedatectl status'
  "

  if [ $? -eq 0 ]; then
    echo "Timezone updated successfully on $server."
  else
    echo "Failed to update timezone on $server."
  fi
done
