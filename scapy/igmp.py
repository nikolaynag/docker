#!/usr/bin/python2
from scapy.all import *
import scapy.contrib.igmp
import time
p = IP(dst="224.0.0.1")/scapy.contrib.igmp.IGMP()
while True:
    send(p)
    time.sleep(10)
