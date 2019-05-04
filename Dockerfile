# Base docker image
FROM ubuntu:18.04 

RUN apt-get update && apt-get install -y \
    dbus-x11 \
    dunst \
    hunspell-en-us \
    python3-dbus \
    software-properties-common \
    libx11-xcb1 \
    gconf2 \
    wget libgl1-mesa-dri libgl1-mesa-glx libxcomposite1 libxslt1.1 gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugins-ugly libgstreamer1.0-0 libgstreamer-plugins-base1.0-0 gstreamer1.0-pulseaudio gstreamer1.0-libav sudo libpulse-mainloop-glib0 pulseaudio libpulse-dev libpci3 \ 
    xdg-utils bash-completion \
    zenity  --no-install-recommends  && apt-get clean

    
    
RUN apt-get install -y  libpulse0 libasound2 libnss3 libcurl3  binutils
RUN cd /tmp && wget http://download.cdn.viber.com/cdn/desktop/Linux/viber.deb && dpkg -i viber.deb  && rm viber.deb
# RUN strip /opt/viber/Viber

RUN apt-get install -y libx11-xcb1 libxcb-composite0 libxcb-present0 libxcb-sync1 libxcb-icccm4 libxcb-image0 libxcb-keysyms1  libxcb-render0 libxcb-render-util0 libxcb-xfixes0 libxcb-xfixes0 libxcb-randr0 libxcb-shape0 libxcb-xkb1 libxtst6

RUN useradd -s /bin/bash -m gui


ENV QT_XKB_CONFIG_ROOT=/usr/share/X11/xkb

# Autorun x11vnc
ENV QTWEBENGINE_DISABLE_SANDBOX=1
ENV QT_DEBUG_PLUGINS=1

CMD sudo -u gui -i  -- /opt/viber/Viber
