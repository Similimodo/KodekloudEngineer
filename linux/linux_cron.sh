ssh steve@stapp02

# Allow crontab access to the mark user
echo "mark" | sudo tee -a /etc/cron.allow

# echo "eric" | sudo tee -a /etc/cron.deny
echo "eric" | sudo tee -a /etc/cron.deny
