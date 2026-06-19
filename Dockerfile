# syntax=docker/dockerfile:1

FROM ghcr.io/linuxserver/baseimage-selkies:ubunturesolute

# title
ENV TITLE=Rueckgrat \
    PIXELFLUX_WAYLAND=true

RUN apt-get update && \
  apt-get install -y --no-install-recommends firefox git && \
  rm -rf \
    /config/.cache \
    /config/.launchpadlib \
    /var/lib/apt/lists/* \
    /var/tmp/* \
    /tmp/*

RUN git clone -b 'feature/#73_improving_installer' https://github.com/tanzfisch/Rueckgrat.git || (echo "Clone fehlgeschlagen" && exit 1)

RUN cd Rueckgrat && ./install.sh --chat_only -y

COPY /root /
EXPOSE 3001

VOLUME /config 
