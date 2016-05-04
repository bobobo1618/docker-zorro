FROM fedora:23
MAINTAINER ME

RUN dnf install -y wine tigervnc-server xorg-x11-server-Xvfb openbox xorg-x11-xinit tmux xorg-x11-utils xdotool tar gzip unzip && dnf clean all
ADD wine.tar.gz /
RUN echo 'exec openbox-session' > /root/.xinitrc
COPY start.sh /start.sh
COPY xstartup /root/.vnc/xstartup
RUN chmod a+x /root/.vnc/xstartup

VOLUME /opt/zorro
EXPOSE 5901
CMD /bin/bash /start.sh
