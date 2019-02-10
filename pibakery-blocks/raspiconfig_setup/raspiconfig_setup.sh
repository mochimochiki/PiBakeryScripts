# raspi-config
## enable ssh
sudo raspi-config nonint do_ssh $1
sudo sh -c 'echo "PasswordAuthentication '$2'" >> /etc/ssh/sshd_config'
## locale
sudo raspi-config nonint do_change_locale $3
## timezone
sudo raspi-config nonint do_change_timezone $4
## save memory usage
### memory for GPU
sudo raspi-config nonint do_memory_split $5
### disable Camera
sudo raspi-config nonint do_camera $6
