
Run it like this on your desktop

```
xhost +
sudo docker run -it -e DISPLAY=unix$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v /dev/snd:/dev/snd --privileged   ezbik/viber
```
