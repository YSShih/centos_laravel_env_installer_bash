 #!/bin/bash

sleep_time=3

#sudo yum-config-manager --enable remi-php74
#############################php7.4############################################

#rpm --import /etc/pki/rpm-gpg/RPM*

#yum remove  --skip-broken php74-*

#rpm -ivh --force ./package/php74/*.rpm
rpm -ivh --nodeps ./package/php74/*.rpm

#rpm -ivh ./package/php74/*.rpm

echo "finished install php74"
php74 -v

sleep $sleep_time

#rpm -ivh --force ./package/php74-package/*.rpm
#rpm -ivh --nodeps ./package/php74-package/*.rpm
#rpm -ivh ./package/php74-package/*.rpm

rpm -ivh --force ./package/php74-package/json/*.rpm
rpm -ivh --force ./package/php74-package/ctype/*.rpm
rpm -ivh --force ./package/php74-package/openssl/*.rpm
rpm -ivh --force ./package/php74-package/tokenizer/*.rpm
rpm -ivh --force ./package/php74-package/pecl_zip/*.rpm

rpm -ivh --force ./package/php74-package/pdo/*.rpm
rpm -ivh --force ./package/php74-package/mbstring/*.rpm
rpm -ivh --force ./package/php74-package/xml/*.rpm
rpm -ivh --force ./package/php74-package/fpm/*.rpm
rpm -ivh --force ./package/php74-package/cli/*.rpm

rpm -ivh --force ./package/php74-package/zip/*.rpm
rpm -ivh --force ./package/php74-package/gd/*.rpm
rpm -ivh --force ./package/php74-package/mysql/*.rpm
rpm -ivh --force ./package/php74-package/bcmath/*.rpm


: '
rpm -ivh --nodeps ./package/php74-package/json/*.rpm
rpm -ivh --nodeps ./package/php74-package/ctype/*.rpm
rpm -ivh --nodeps ./package/php74-package/openssl/*.rpm
rpm -ivh --nodeps ./package/php74-package/tokenizer/*.rpm
rpm -ivh --nodeps ./package/php74-package/pecl_zip/*.rpm

rpm -ivh --nodeps ./package/php74-package/pdo/*.rpm
rpm -ivh --nodeps ./package/php74-package/mbstring/*.rpm
rpm -ivh --nodeps ./package/php74-package/xml/*.rpm
rpm -ivh --nodeps ./package/php74-package/fpm/*.rpm
rpm -ivh --nodeps ./package/php74-package/cli/*.rpm

rpm -ivh --nodeps ./package/php74-package/zip/*.rpm
rpm -ivh --nodeps ./package/php74-package/gd/*.rpm
rpm -ivh --nodeps ./package/php74-package/mysql/*.rpm
rpm -ivh --nodeps ./package/php74-package/bcmath/*.rpm
'

echo "finished install php74-packages"
sleep $sleep_time




