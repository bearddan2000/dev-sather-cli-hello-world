#! /bin/sh

FILE=hello && \
    sacomp -main HELLO -o $FILE $FILE.sa 1>&2 && \
    ./$FILE && \
    rm $FILE