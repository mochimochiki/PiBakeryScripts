# samba install
mkdir /home/pi/Public
sudo apt update
sudo apt install -y samba
sudo cat > /etc/samba/smb.conf << EOF
[raspberrypi]
   comment = Raspberry Pi
   path = /home/pi/Public
   guest ok = yes
   read only = no
   browsable = no
   force user = pi
EOF
sudo service smbd restart
sleep 10