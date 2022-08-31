sudo fallocate -l "$1"G /mnt/"$1"GB.swap \
&& sudo mkswap /mnt/"$1"GB.swap \
&& sudo swapon /mnt/"$1"GB.swap \
&& sudo /mnt/"$1"GB.swap  none  swap  sw 0  0 \
&& sudo swapon -s
