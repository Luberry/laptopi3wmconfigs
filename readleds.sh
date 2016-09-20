#!/bin/sh
#vim: filetype=sh

#!/bin/sh
# shell script to prepend i3status with more stuff
#

                 num=`xset -q | grep "Num Lock:    on"`
                 caps=`xset -q | grep "Caps Lock:   off"`
                 order=""

                 if ["$caps" == ""]; then
                     order="${order}CAPS-ON"
                 fi
                 if ["$num" == ""]; then
                     if ["$caps" == ""]; then
                         order="${order}:"
                     fi
                     order="${order}NUM-OFF"
                 fi
                 echo "$order"
