 #!/bin/bash

echo "export LANG=en_US.UTF-8" >>/etc/profile.d/locale.sh
echo "export LANGUAGE=en_US.UTF-8" >>/etc/profile.d/locale.sh

source /etc/profile.d/locale.sh

echo "finished"