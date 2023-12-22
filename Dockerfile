FROM ubuntu:20.04


ENV DEBIAN_FRONTEND=noninteractive

RUN apt update &&\
    apt install -f -y  texlive-xetex

COPY *.tex /
COPY makezine.sh makezine.sh
RUN chmod +x makezine.sh

ENTRYPOINT [ "./makezine.sh" ]