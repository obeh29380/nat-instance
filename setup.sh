#/bin/bash

if [ "$#" -ne 1 ]; then
  echo "Specify device name"
  exit 1
fi

device=$1

yum update
yum install -y iptables-services

sudo sysctl -w net.ipv4.ip_forward=1 | tee -a /etc/sysctl.conf
/sbin/iptables -t nat -A POSTROUTING -o $device -j MASQUERADE

iptables -t nat --list
service iptables save

systemctl start iptables
systemctl enable iptables
systemctl status iptables

echo done!
