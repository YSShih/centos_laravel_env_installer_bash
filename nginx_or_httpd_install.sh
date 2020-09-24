#!/bin/bash
sleep_time=3

read -p  "Do you want to install [Nginx] ?(Y or N?): " nginx 
read -p  "Do you want to install [httpd] ?(Y or N?): " httpd 
echo "Your are going to install [Nginx] $nginx [httpd] $httpd"  



##############################nginx############################################
if [ $nginx == "Y" ]; then
   
    rpm -ivh ./package/nginx/*.rpm

	sleep $sleep_time
    echo "[Nginx] installed" 
else
   
    echo "[Nginx] not installed"   
  
fi

#################################apache#################################################

if [ $httpd == "Y" ]; then
	rpm -ivh ./package/httpd/*.rpm	
	echo "[httpd] installed"
	httpd -v
	sleep $sleep_time
else
  
    echo "[httpd] not installed"   
  
fi
######################################################################################


