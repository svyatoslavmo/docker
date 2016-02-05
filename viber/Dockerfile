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
    wget libgl1-mesa-dri libgl1-mesa-glx libxcomposite1 libxslt1.1  libgstreamer0.10-0 libgstreamer-plugins-base0.10-0  \
    zenity  --no-install-recommends  && apt-get clean

RUN cd /tmp && wget http://download.cdn.viber.com/cdn/desktop/Linux/viber.deb && dpkg -i viber.deb  && rm viber.deb
RUN useradd -s /bin/bash -m gui


ENV QT_XKB_CONFIG_ROOT=/usr/share/X11/xkb

# Autorun x11vnc
CMD sudo -u gui -i  -- /opt/viber/Viber
