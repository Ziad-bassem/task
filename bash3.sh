

warp-cli connect 

sleep 5 

ipaddress=$(curl ipinfo.io/ip)
if [ -n "$ipaddress" ];
then 
echo "connected to ip: $ipaddress"

else 
echo "connection failed"

fi


openvpn --config /Dowenloads/123.ovpn

sleep 5


ping -c 3 10.10.10.10


warp-cli disconnect
