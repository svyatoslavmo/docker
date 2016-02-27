
Allow it to appear on your desktop

```
xhost +
```

Run it like this on your desktop

```
sudo docker run --rm -it -e DISPLAY=unix$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v /dev/snd:/dev/snd --privileged   ezbik/telegram
```

Or create forever

```
sudo docker create \
        -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY -v /dev/snd:/dev/snd \
        --privileged --name telegram  ezbik/telegram
sudo docker start telegram
```

