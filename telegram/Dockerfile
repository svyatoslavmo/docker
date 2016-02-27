# Base docker image
FROM ubuntu:14.04 

RUN apt-get update && apt-get install -y \
    dbus-x11 \
    dunst \
    hunspell-en-us \
    python3-dbus \
    software-properties-common \
    libx11-xcb1 \
    gconf2 \
    wget \
     --no-install-recommends  && apt-get clean

RUN cd /tmp && wget https://updates.tdesktop.com/tlinux/tsetup.0.9.28.tar.xz  && tar xf tsetup.0.9.28.tar.xz 
RUN mv Telegram /opt/; ln -s /opt/Telegram/Telegram /usr/bin/
RUN useradd -s /bin/bash -m gui

ENV QT_XKB_CONFIG_ROOT=/usr/share/X11/xkb

# Autorun 
CMD sudo -u gui -i  -- /usr/bin/Telegram
