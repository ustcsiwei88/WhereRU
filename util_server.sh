sudo sysctl -w net.ipv4.ip_forward=1
sudo ip addr add 10.0.3.1/24 dev tun0
sudo ifconfig tun0 up
sudo ip route add 10.0.3.0/24 dev tun0
#sudo iptables -A FORWARD -i tun0 -j ACCEPT
#sudo iptables -t nat -A POSTROUTING -o enp0s3 -j MASQUERADE
