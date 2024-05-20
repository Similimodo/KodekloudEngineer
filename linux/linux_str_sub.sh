ssh clint@stbkp01
sudo sed -i 's/Random/Maritime/g' /root/nautilus.xml

# Verify
grep "Random" /root/nautilus.xml
