# WAN (Internet)
/ip dhcp-client add interface=ether1

# LAN IP
/ip address add address=192.168.10.1/24 interface=ether2

# DHCP Server
/ip pool add name=pool1 ranges=192.168.10.10-192.168.10.100
/ip dhcp-server add interface=ether2 address-pool=pool1
/ip dhcp-server network add address=192.168.10.0/24 gateway=192.168.10.1

# NAT
/ip firewall nat add chain=srcnat action=masquerade out-interface=ether1
