# Create VLAN interfaces on trunk port (ether2)
/interface vlan
add name=vlan10 interface=ether2 vlan-id=10
add name=vlan20 interface=ether2 vlan-id=20

# Assign IP Address for each VLAN
/ip address
add address=192.168.10.1/24 interface=vlan10 comment="Office VLAN"
add address=192.168.20.1/24 interface=vlan20 comment="Server VLAN"

# DHCP for VLAN 10
/ip pool add name=pool_vlan10 ranges=192.168.10.10-192.168.10.100
/ip dhcp-server add name=dhcp_vlan10 interface=vlan10 address-pool=pool_vlan10
/ip dhcp-server network add address=192.168.10.0/24 gateway=192.168.10.1

# DHCP for VLAN 20
/ip pool add name=pool_vlan20 ranges=192.168.20.10-192.168.20.100
/ip dhcp-server add name=dhcp_vlan20 interface=vlan20 address-pool=pool_vlan20
/ip dhcp-server network add address=192.168.20.0/24 gateway=192.168.20.1

# NAT for internet access
/ip firewall nat add chain=srcnat out-interface=ether1 action=masquerade
