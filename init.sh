#!/bin/bash

# Assumption: k8s/kubeadm was deployed using podcidr=10.240.0.0/16
# Allow pod to pod communication
iptables -A FORWARD -s 10.240.0.0/16 -j ACCEPT
iptables -A FORWARD -d 10.240.0.0/16 -j ACCEPT

# Allow communication across hosts
ip route add 10.240.1.0/24 via 10.10.10.11 dev enp0s9

# Allow outgoing internet 
iptables -t nat -A POSTROUTING -s 10.240.0.0/24 ! -o cni0 -j MASQUERADE

