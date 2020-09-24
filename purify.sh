 #!/bin/bash

 yum remove epel-release -y
 
 yum remove yum-utils -y

 yum remove httpd -y

 yum remove nginx -y

 yum remove php74-* -y


 rm /etc/profile.d/locale.sh

 echo "purify finished"