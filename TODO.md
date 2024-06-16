# Disclaimer
All projects that start with `dev`
are under active development.

This project is in development meaning
it does not produce expected results.

# Problem
Can't find executable.

# Error
Dockerfile:5
--------------------
   4 |     
   5 | >>> RUN pacman -Syu --noconfirm && \
   6 | >>>     pacman -Sy --noconfirm git fakeroot make gcc gc tcl tk && \
   7 | >>>     useradd sather

# Possible solutions
Update docker image.