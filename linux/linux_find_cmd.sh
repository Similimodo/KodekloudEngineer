ssh tony@stapp01
sudo su

# Use the find command to locate the .php extension files not directories
find /var/www/html/ecommerce/ -type f -name '*.php'

# Use this command to copy those files to /ecommerce folder
cp --parents $(find /var/www/html/ecommerce -type f -name "*.php") /ecommerce
