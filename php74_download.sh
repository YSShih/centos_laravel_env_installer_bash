#!/bin/sh

sleep_time=3

#sudo yum-config-manager --enable remi-php74
#############################php7.4############################################
#yum remove  --skip-broken php74-*

yum install --downloadonly --downloaddir=./package/php74  php74 -y

echo "finished download php74"
sleep $sleep_time

#yum install --downloadonly --downloaddir=./package/php74-package php74-php-ctype php74-php-json php74-php-openssl php74-php-tokenizer php74-php-pecl-zip php74-php-pdo php74-php-mbstring php74-php-xml php74-php-fpm php74-php-cli php74-php-zip php74-php-gd php74-php-mysql php74-php-bcmath -y

yum install --downloadonly --downloaddir=./package/php74-package/json php74-php-json -y
yum install --downloadonly --downloaddir=./package/php74-package/ctype php74-php-ctype -y
yum install --downloadonly --downloaddir=./package/php74-package/openssl php74-php-openssl -y
yum install --downloadonly --downloaddir=./package/php74-package/tokenizer php74-php-tokenizer -y
yum install --downloadonly --downloaddir=./package/php74-package/pecl_zip php74-php-pecl-zip -y


yum install --downloadonly --downloaddir=./package/php74-package/pdo php74-php-pdo -y
yum install --downloadonly --downloaddir=./package/php74-package/mbstring php74-php-mbstring -y
yum install --downloadonly --downloaddir=./package/php74-package/xml php74-php-xml -y
yum install --downloadonly --downloaddir=./package/php74-package/fpm php74-php-fpm -y
yum install --downloadonly --downloaddir=./package/php74-package/cli php74-php-cli -y

yum install --downloadonly --downloaddir=./package/php74-package/zip php74-php-zip -y
yum install --downloadonly --downloaddir=./package/php74-package/gd php74-php-gd -y
yum install --downloadonly --downloaddir=./package/php74-package/mysql php74-php-mysql -y
yum install --downloadonly --downloaddir=./package/php74-package/bcmath php74-php-bcmath -y



echo "finished download php74-packages"
sleep $sleep_time