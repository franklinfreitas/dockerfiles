docker run -d \
    -v /etc/localtime:/etc/localtime:ro \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY=$DISPLAY \
    -e PULSE_SERVER=unix:${XDG_RUNTIME_DIR}/pulse/native \
    --device /dev/snd:/dev/snd \
    -v $HOME/.spotify/config:/home/spotify/.config/spotify \
    -v $HOME/.spotify/cache:/home/spotify/spotify \
    -v ${XDG_RUNTIME_DIR}/pulse/native:${XDG_RUNTIME_DIR}/pulse/native \
    --group-add $(getent group audio | cut -d: -f3) \
    --name spotify \
    jess/spotify

# ## Sound options for RHEL7 OpenClient
# snd_opts="--device /dev/snd \
#   -e PULSE_SERVER=unix:${XDG_RUNTIME_DIR}/pulse/native \
#   -v ${XDG_RUNTIME_DIR}/pulse/native:${XDG_RUNTIME_DIR}/pulse/native \
#   --group-add $(getent group audio | cut -d: -f3)"