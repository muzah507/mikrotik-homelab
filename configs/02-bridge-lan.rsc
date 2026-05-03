# Create bridge
/interface bridge add name=bridge-LAN

# Add ports
/interface bridge port
add bridge=bridge-LAN interface=ether2
add bridge=bridge-LAN interface=ether3
add bridge=bridge-LAN interface=ether4

# IP Address
/ip address add address=192.168.10.1/24 interface=bridge-LAN
add address=192.168.10.1/24 interface=ether2
add address=192.168.20.1/24 interface=ether3
