# Enable Traffic Graphing for Interfaces
/tool graphing interface
add interface=ether1
add interface=ether2

# Enable Graphing for System Resources
/tool graphing resource add

# Enable Graphing for Queues (optional)
/tool graphing queue add

# Set SNMP (for advanced monitoring tools)
/snmp set enabled=yes

# Optional: Set contact & location (for documentation)
/snmp set contact="admin" location="homelab"
