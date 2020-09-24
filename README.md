# centos_laravel_env_installer_bash

<h2>說明:</h2>

此為laravel 8 用 centos 離線安裝包
 </br> 
使用順序:
 </br> 
<ol>
    <li>set_system_defaulting_to_C.sh</li>
    <li>os_repo_download.sh</li>
    <li>php74_download.sh</li>
    <li>nginx_or_httpd_download.sh</li>
    <li>mysql8_download.sh</li>
    </br>    
    <li>os_repo_install.sh</li>
    <li>php74_install.sh</li>
    <li>nginx_or_httpd_install.sh</li>
</ol>

TODO LIST:

<ul>
    <li>加入os系統套件安裝來源Repository</li>
    <li>加入判斷已安裝系統環境套件</li>
    <li>mysql 安裝shell</li>
    <li>php 安裝版本參數化 、 優化php安裝 bash shell</li>
    <li>加入 php-fpm 、 nginx 、 apache 等套件 conf自動設定</li>    
<ul>