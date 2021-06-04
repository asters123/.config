#!/bin/bash

sshpass -p 000000 ssh root@10.0.0.1 <<EOF
 /etc/init.d/firewall restart
EOF

