

docker run -it --rm --name worker \
-v /etc/nginx/conf.d:/etc/nginx/conf.d  \
-v /etc/nginx/sites-enabled:/etc/nginx/sites-enabled  \
-v /var/lib/notify:/var/lib/notify \
-v /var/lib/extrausers:/var/lib/extrausers \
-v /etc/php5/fpm/pool.d:/etc/php5/fpm/pool.d \
-v /var/www:/var/www    \
-v /etc/group:/etc/group    \
-v /etc/shadow:/etc/shadow  \
-v /etc/passwd:/etc/passwd \
-p 80:80 \
--log-driver=syslog --log-opt syslog-address=tcp://172.31.17.63   --net=host \
    4d44e7d1c2c1 

