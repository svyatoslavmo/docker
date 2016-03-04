
docker run -it --rm --name worker \
-v /root/zmywptest.com_php:/etc/nginx/sites-enabled/zmywptest.com   \
-v /etc/nginx/conf.d:/etc/nginx/conf.d  \
-v /var/www:/var/www    \
-v /etc/group:/etc/group    \
-v /etc/shadow:/etc/shadow  \
-v /etc/passwd:/etc/passwd \
-p 80:80 \
    4d44e7d1c2c1 

