sudo systemctl disable nvzramconfig
if [ -d "/mnt/""$1""GB.swap" ]; then
 sudo swapoff -a \
 && sudo mkswap /mnt/"$1"GB.swap \
 && sudo swapon /mnt/"$1"GB.swap
else 
 fallocate -l "$1"G /mnt/"$1"GB.swap \ 
 && sudo chmod 600 /mnt/"$1"GB.swap \
 && sudo chown 0.0 /mnt/"$1"GB.swap \
 && sudo swapoff -a \
 && sudo mkswap /mnt/"$1"GB.swap \
 && sudo swapon /mnt/"$1"GB.swap \
 # && sudo echo "/mnt/"$1"GB.swap none swap sw 0  0" >> /etc/fstab \
 && sudo swapon -s
fi
