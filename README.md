# nat-instance

Network settings for nat-instance

## execution

```
sudo bash setup.sh <network device name>
```

### network device name

- sample1(`ens5` is the device name)
```
[ec2-user@ip-172-31-36-56 ~]$ ip route
default via 172.31.32.1 dev ens5 proto dhcp src 172.31.36.56 metric 512
172.31.0.2 via 172.31.32.1 dev ens5 proto dhcp src 172.31.36.56 metric 512
172.31.32.0/20 dev ens5 proto kernel scope link src 172.31.36.56 metric 512
172.31.32.1 dev ens5 proto dhcp scope link src 172.31.36.56 metric 512
```

- sample2(`ens5` is the device name)
```
[ec2-user@ip-172-31-36-56 ~]$ ifconfig -a
ens5: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 9001
        inet 172.31.36.56  netmask 255.255.240.0  broadcast 172.31.47.255
        inet6 fe80::4d1:aff:fe0d:2a39  prefixlen 64  scopeid 0x20<link>
        ether 06:d1:0a:0d:2a:39  txqueuelen 1000  (Ethernet)
        RX packets 34358  bytes 36078308 (34.4 MiB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 11323  bytes 1215022 (1.1 MiB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

lo: flags=73<UP,LOOPBACK,RUNNING>  mtu 65536
        inet 127.0.0.1  netmask 255.0.0.0
        inet6 ::1  prefixlen 128  scopeid 0x10<host>
        loop  txqueuelen 1000  (Local Loopback)
        RX packets 12  bytes 1020 (1020.0 B)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 12  bytes 1020 (1020.0 B)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
```
