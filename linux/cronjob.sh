# Install Cronie
sudo yum install -y cronie

# Start and Enable crond Service
sudo systemctl start crond
sudo systemctl enable crond

# Verify
sudo systemctl status crond

# Step 2: Add a Cron Job
# Edit the Cron Jobs for Root:
sudo crontab -e

#Add the Cron Job:
*/5 * * * * echo hello > /tmp/cron_text

# Verifying the Cron Job
# Wait at least 5 minutes for the cron job to run at least once.
cat /tmp/cron_text
