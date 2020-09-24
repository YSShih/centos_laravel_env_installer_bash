#!/bin/bash

sleep_time=3


read -p  "Do you want to download [Nginx] ?(Y or N?): " nginx 
read -p  "Do you want to download [httpd] ?(Y or N?): " httpd 
echo "Your are going to download [Nginx] $nginx [httpd] $httpd"     



##############################nginx############################################
if [ $nginx == "Y" ]; then
   
    echo '[nginx]'>>/etc/yum.repos.d/nginx.repo
	echo 'name=nginx repo'>>/etc/yum.repos.d/nginx.repo
	echo 'baseurl=http://nginx.org/packages/centos/7/$basearch/'>>/etc/yum.repos.d/nginx.repo
	echo 'gpgcheck=0'>>/etc/yum.repos.d/nginx.repo
	echo 'enabled=1'>>/etc/yum.repos.d/nginx.repo

	yum install --downloadonly --downloaddir=./package/nginx nginx 

	echo "finished download nginx"
	sleep $sleep_time
    echo "[Nginx] downloaded" 
else
    
    echo "[Nginx] not downloaded"   
  
fi



#################################apache#################################################

if [ $httpd == "Y" ]; then

	#yum install --downloadonly --downloaddir=./httpd/apr  apr -y
	#yum install --downloadonly --downloaddir=./httpd/apr-util  apr-util -y
	#yum install --downloadonly --downloaddir=./httpd/centos-logos  centos-logos -y
	#yum install --downloadonly --downloaddir=./httpd/httpd-tools  httpd-tools -y
	#yum install --downloadonly --downloaddir=./httpd/mailcap  mailcap -y

	yum install --downloadonly --downloaddir=./package/httpd  httpd -y

	echo "finished download httpd"
	sleep $sleep_time
else
    # 檔案 /path/to/dir/filename 不存在
    echo "[httpd] not downloaded"   
  
fi
######################################################################################


