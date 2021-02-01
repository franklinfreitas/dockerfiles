# --------------------
# How to Build Image
# --------------------
# docker build -f Debian-Firefox.dockerfile --tag my-firefox .

# ------------------------
# How to Create Container
# ------------------------
# docker run -it --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix/:/tmp/.X11-unix  my-firefox
# docker run -it --name firefox -e DISPLAY=$DISPLAY -v /tmp/.X11-unix/:/tmp/.X11-unix  my-firefox

FROM debian:latest

RUN apt-get update && \
    apt-get install -y firefox-esr && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/

# Replace 1000 with your user / group id
RUN export uid=1000 gid=1000 && \
    groupadd -g 1000 developer && \
    useradd -m -d /home/developer -u 1000 -g developer developer 
    # && \
    # echo "developer ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/developer

USER developer
ENV HOME /home/developer
CMD /usr/bin/firefox
