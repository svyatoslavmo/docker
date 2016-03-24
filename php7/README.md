

Pull it firstly

```
docker pull ezbik/php7:latest
```

Check it out,


```
docker run --rm     -v /var/run/php70:/var/run -v /var/run/mysqld:/var/run/mysqld -v /var/www:/var/www -v /etc/passwd:/etc/passwd:ro -v /etc/group:/etc/group:ro -v /etc/shadow:/etc/shadow:ro  -it --net=host ezbik/php7 bash  
```
then :
```
php-fpm7.0 -F -O
```

Or create forever:
```
docker stop php70;  docker rm php70 ; docker create --restart=always --name php70 -v /dev/log:/dev/log -v /var/run/php70:/var/run -v /var/run/mysqld:/var/run/mysqld -v /var/www:/var/www -v /etc/passwd:/etc/passwd:ro -v /etc/group:/etc/group:ro -v /etc/shadow:/etc/shadow:ro --net=host ezbik/php7:latest  
docker  start php70
```

As you can see, it will create a socket that is visible on host system as */var/run/php70/php7-fpm.sock*, you can use it in Nginx
Please note, `--net=host` is used to make it possible for `ssmtp` to connect to `localhost:25` for realying mail via host's MTA.
