#!/bin/bash

ADMIN_CONSOLE_PASSWD=''
MYSQL_SUPER_PASSWD=''
KALTURA_MYSQL_PASSWD=''
ADMIN_CONSOLE_EMAIL=''
IP_RANGE='0.0.0.0-255.255.255.255'
SSL_KEY='/etc/ssl/private/ssl-cert-snakeoil.key'
SPHINX_HOSTNAME='kaltura-server'
DB_PORT='3306'
DB_HOSTNAME='localhost'
CONTACT_PHONE='+1 800 871 5224'
NGINX_SERVICE_URL='kaltura-server'
VHOST_PORT='80'
NGINX_PORT='88'
SERVICE_URL='http://kaltura-server'
CDN_HOSTNAME='kaltura-server'
TIME_ZONE='America/New_York'
VOD_PACKAGER_PORT='88'
CONTACT_URL='http://corp.kaltura.com/company/contact-us'
SECOND_SPHINX_HOSTNAME='kaltura-server'
NGINX_HOSTNAME='kaltura-server'
INSTALL_ANALYTICS_EMAIL=''
APACHE_HOSTNAME='kaltura-server'
SSL_CERT='/etc/ssl/certs/ssl-cert-snakeoil.pem'
VOD_PACKAGER_HOSTNAME='127.0.0.1'


echo kaltura-base    kaltura-base/admin_console_email        string $ADMIN_CONSOLE_EMAIL | debconf-set-selections
echo kaltura-base    kaltura-base/admin_console_passwd_again password $ADMIN_CONSOLE_PASSWD | debconf-set-selections
echo kaltura-base    kaltura-base/admin_console_passwd_dont_match    note | debconf-set-selections
echo kaltura-base    kaltura-base/admin_console_passwd_invalid_char  note | debconf-set-selections
echo kaltura-base    kaltura-base/admin_console_passwd       password        $ADMIN_CONSOLE_PASSWD | debconf-set-selections
echo kaltura-base    kaltura-base/apache_hostname    string  $APACHE_HOSTNAME | debconf-set-selections
echo kaltura-base    kaltura-base/bad_time_zone      note | debconf-set-selections
echo kaltura-base    kaltura-base/cdn_hostname       string  $CDN_HOSTNAME | debconf-set-selections
echo kaltura-base    kaltura-base/contact_phone      string  $CONTACT_PHONE | debconf-set-selections
echo kaltura-base    kaltura-base/contact_url        string  $CONTACT_URL | debconf-set-selections
echo kaltura-base    kaltura-base/db_hostname        string  $DB_HOSTNAME | debconf-set-selections
echo kaltura-base    kaltura-base/db_port    string  $DB_PORT | debconf-set-selections
echo kaltura-base    kaltura-base/dwh_db_hostname    string  $DB_HOSTNAME | debconf-set-selections
echo kaltura-base    kaltura-base/dwh_db_port        string  $DB_PORT | debconf-set-selections
echo kaltura-base    kaltura-base/env_name   string  Kaltura Video Platform | debconf-set-selections
echo kaltura-base    kaltura-base/install_analytics_consent  boolean false | debconf-set-selections
echo kaltura-base    kaltura-base/install_analytics_email    string $INSTALL_ANALYTICS_EMAIL | debconf-set-selections
echo kaltura-base    kaltura-base/ip_range   string  $IP_RANGE | debconf-set-selections
echo kaltura-base    kaltura-base/media_server_hostname      string | debconf-set-selections
echo kaltura-base    kaltura-base/mysql_super_passwd password   $MYSQL_SUPER_PASSWD | debconf-set-selections
echo kaltura-base    kaltura-base/mysql_super_user   string  root | debconf-set-selections
echo kaltura-base    kaltura-base/kaltura_mysql_passwd       password        $KALTURA_MYSQL_PASSWD | debconf-set-selections
echo kaltura-base    kaltura-base/kaltura_mysql_passwd_again password        $KALTURA_MYSQL_PASSWD | debconf-set-selections
echo kaltura-base    kaltura-base/auto_generate_kaltura_mysql_passwd boolean false | debconf-set-selections
echo kaltura-base    kaltura-base/second_sphinx_hostname     string  $SECOND_SPHINX_HOSTNAME | debconf-set-selections
echo kaltura-base    kaltura-base/service_url        string  $SERVICE_URL | debconf-set-selections
echo kaltura-base    kaltura-base/sphinx_hostname    string  $SPHINX_HOSTNAME | debconf-set-selections
echo kaltura-base    kaltura-base/time_zone  string $TIME_ZONE | debconf-set-selections
echo kaltura-base    kaltura-base/vhost_port string  $VHOST_PORT | debconf-set-selections
echo kaltura-base    kaltura-base/vod_packager_hostname      string  $VOD_PACKAGER_HOSTNAME | debconf-set-selections
echo kaltura-base    kaltura-base/vod_packager_port  string  $VOD_PACKAGER_PORT | debconf-set-selections

echo kaltura-db      kaltura-db/db_already_installed boolean false | debconf-set-selections
echo kaltura-db      kaltura-db/db_hostname  string  $DB_HOSTNAME | debconf-set-selections
echo kaltura-db      kaltura-db/db_port      string  $DB_PORT | debconf-set-selections
echo kaltura-db      kaltura-db/fix_mysql_settings   boolean true | debconf-set-selections
echo kaltura-db      kaltura-db/mysql_super_passwd   password        $MYSQL_SUPER_PASSWD | debconf-set-selections
echo kaltura-db      kaltura-db/mysql_super_user     string  root | debconf-set-selections
echo kaltura-db      kaltura-db/remove_db    boolean false | debconf-set-selections


echo kaltura-front   kaltura-front/apache_ssl_cert   string  $SSL_CERT | debconf-set-selections
echo kaltura-front   kaltura-front/apache_ssl_chain  string | debconf-set-selections
echo kaltura-front   kaltura-front/apache_ssl_key    string  $SSL_KEY | debconf-set-selections
echo kaltura-front   kaltura-front/is_apache_ssl     boolean true | debconf-set-selections
echo kaltura-front   kaltura-front/self_signed_cert  note | debconf-set-selections
echo kaltura-front   kaltura-front/service_url       string  $SERVICE_URL | debconf-set-selections
echo kaltura-front   kaltura-front/vhost_port        string  $VHOST_PORT | debconf-set-selections
echo kaltura-front   kaltura-front/web_interfaces    multiselect | debconf-set-selections

echo kaltura-nginx   kaltura-nginx/kaltura_service_url       string $NGINX_SERVICE_URL | debconf-set-selections
echo kaltura-nginx   kaltura-nginx/nginx_hostname    string  $NGINX_HOSTNAME | debconf-set-selections
echo kaltura-nginx   kaltura-nginx/nginx_port        string  $NGINX_PORT | debconf-set-selections
echo kaltura-nginx   kaltura-nginx/ssl_cert          string  $SSL_CERT | debconf-set-selections
echo kaltura-nginx   kaltura-nginx/ssl_key           string  $SSL_KEY | debconf-set-selections
echo kaltura-nginx   kaltura-nginx/is_ssl            boolean true | debconf-set-selections

echo mysql-server-5.5        mysql-server/root_password_again        password $MYSQL_SUPER_PASSWD | debconf-set-selections
echo mysql-server-5.5        mysql-server/root_password      password $MYSQL_SUPER_PASSWD | debconf-set-selections
