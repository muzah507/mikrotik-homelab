/ip firewall filter
add chain=forward src-address=192.168.20.0/24 dst-address=192.168.10.0/24 action=drop comment="Block LAN2 to LAN1"
