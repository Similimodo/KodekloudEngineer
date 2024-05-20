# App Server 1
ssh tony@stapp01
sudo systemctl set-default graphical.target

#App Server 2
ssh steve@stapp02
sudo systemctl set-default graphical.target

# App Server 3
ssh banner@stapp03
sudo systemctl set-default graphical.target
