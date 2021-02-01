# --------------------
# How to Build Image
# --------------------
# docker build -f Debian-Firefox.dockerfile --tag my-firefox .

# ------------------------
# How to Create Container
# ------------------------
# docker run -it --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix/:/tmp/.X11-unix  my-firefox
# docker run -it --name firefox -e DISPLAY=$DISPLAY -v /tmp/.X11-unix/:/tmp/.X11-unix  my-firefox

FROM alpine:latest


RUN apk add --no-cache \
    alsa-lib \
    ca-certificates \
    firefox-esr \
    hicolor-icon-theme \
    mesa-dri-intel \
    mesa-gl \
    ttf-dejavu \ 
    rm -f /var/cache/apk/*


ENTRYPOINT ["/usr/bin/firefox"]
