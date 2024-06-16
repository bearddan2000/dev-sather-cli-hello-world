FROM archlinux:base-20231112.0.191179

ENV SATHER_HOME=/usr/lib/sather

RUN pacman -Syu --noconfirm && \
    pacman -Sy --noconfirm git fakeroot make gcc gc tcl tk && \
    useradd sather

USER sather

WORKDIR /home/sather

RUN cd /home/sather && \
    git clone https://github.com/aur-archive/sather && \
    cd sather && \
    makepkg

COPY bin .

# CMD "./run.sh"