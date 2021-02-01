docker run -d \
    -v /etc/localtime:/etc/localtime:ro \
    -v /etc/machine-id:/etc/machine-id \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY=unix$DISPLAY \
    -e GDK_SCALE \
    -e GDK_DPI_SCALE \
    --device /dev/snd \
    --device /dev/dri \
    --name firefox \
    my-firefox