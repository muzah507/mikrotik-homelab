# Firewall Basics

## Purpose
Control traffic between networks

## Example Rule
Block access from LAN2 to LAN1

src: 192.168.20.0/24
dst: 192.168.10.0/24
action: drop
