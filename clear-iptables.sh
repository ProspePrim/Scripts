sudo -s
 
iptables -F
iptables -X
iptables -t nat -F
iptables -t nat -X
iptables -t mangle -F
iptables -t mangle -X
iptables -P INPUT ACCEPT
iptables -P FORWARD ACCEPT
iptables -P OUTPUT ACCEPT
 
# Если установлен iptables-persistent
 
iptables-save > /etc/iptables/rules.v4
ip6tables-save > /etc/iptables/rules.v6