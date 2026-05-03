# DHCP & NAT

## DHCP
Automatically assigns IP addresses to clients

## NAT
Allows private networks to access the internet

## Example NAT Rule
chain=srcnat action=masquerade out-interface=ether1
