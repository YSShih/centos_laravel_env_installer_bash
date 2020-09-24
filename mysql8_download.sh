 #!/bin/bash

sleep_time=3

DIR_mysql="package/mysql"
if [ -f $DIR_remi_release ]; then
    # 檔案 /path/to/dir/filename 存在
    echo "File $DIR_mysql exists."
else
    # 檔案 /path/to/dir/filename 不存在
    echo "File $DIR_mysql does not exists."   
    mkdir $DIR_mysql
fi

curl https://repo.mysql.com/mysql80-community-release-el7-3.noarch.rpm > ./package/mysql/mysql80-community-release-el7-3.noarch.rpm

echo "finished download mysql 8"

sleep $sleep_time

