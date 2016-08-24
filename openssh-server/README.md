
```
/etc/ssh/chroot-readingtonrecre/passwd:readingtonrecre:x:33:33::/var/www/readingtonrecreation.org/:/bin/bash
/etc/ssh/chroot-readingtonrecre/shadow:readingtonrecre:$1$vU0g2wH8$QFdgeP8Y9LKRjGpgxakjG/:17037:0:99999:7:::

sudo docker run  --name chroot-readingtonrecre -d -p 2201:22   \
        -v  /var/www/readingtonrecreation.org:/var/www/readingtonrecreation.org  \
        -v /etc/ssh/chroot-readingtonrecre/passwd:/etc/passwd:ro  \
        -v /etc/ssh/chroot-readingtonrecre/group:/etc/group:ro \
        -v /etc/ssh/chroot-readingtonrecre/shadow:/etc/shadow:ro \
        -v /dev/log:/dev/log \
        ezbik/openssh-server
```


