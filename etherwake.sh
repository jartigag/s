#!/bin/bash

# ping -c 4 192.@68.1.11 && arp -n >> homelab.wol

etherwake -f homelab.wol