# in a jetson nano this will save you around 1GB of RAM usage
if [ "${DEFAULT_DM}" != "/usr/sbin/lightdm" ]; then
                        echo "/usr/sbin/lightdm" > "/etc/X11/default-display-manager"
                        wait_debconf_resource
                        DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true dpkg-reconfigure lightdm
                        echo set shared/default-x-display-manager lightdm | debconf-communicate
                fi