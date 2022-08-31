# jetson_nano
just trying to create a few public utilities for Jetson nano

# Usage 

## lxde_ldm_enable.sh - Lightening your OS usage

This script is used for Jetson Nano 4GB users,
when you have a Jetson Nano 2GB it happens automatically.


To use this script you basically will enter the repo folder and type:
```
sudo sh lxde_ldm_enable.sh
```
## swap_choose.sh - Choose your Swap Size

This script is used if you want to increase or decrease the usage of your Swap file.

To use the script you will enter the repo folder and type:
```
sudo sh swap_choose.sh <Size in GB>
```
An example would be:
```
sudo sh swap_choose.sh 4
```

## ssh.txt - How to get your ssh key

You can use your ssh key to access private repositories.
To create a new SSH Key you will click into your profile icon -> Settings -> SSH and GPG keys -> New SSH key

In 'Title' you can put whatever you want - Example: Jetson Nano SD 64GB.

In 'Key type' you need to select 'Authentication key'.

And in 'Key' you will paste the ssh key generated in your jetson nano, if you went by the example of 'ssh.txt' you can grab the 'termbin.com/RANDOM_URL'
random url generated and use in your device to copy and paste inside the 'Key' tab.

