# IP Address Settings
echo "interface $1" >> /etc/dhcpcd.conf
echo "  static ip_address=$2" >> /etc/dhcpcd.conf
echo "  static routers=$3" >> /etc/dhcpcd.conf
echo "  static domain_name_servers=$4" >> /etc/dhcpcd.conf