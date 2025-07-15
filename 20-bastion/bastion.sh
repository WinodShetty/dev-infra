#!/bin/bash
ARCH=amd64
PLATFORM=$(uname -s)_$ARCH
HOME=/root

growpart /dev/nvme0n1 4
lvextend -l +50%FREE /dev/RootVG/rootVol
lvextend -l +50%FREE /dev/RootVG/varVol
