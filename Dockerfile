FROM debian
WORKDIR /app_root

RUN apt update -y &&\
    apt install -y curl make
RUN curl -O https://www.rarlab.com/rar/rarlinux-x64-5.9.0.tar.gz &&\
    tar xf rarlinux-x64-5.9.0.tar.gz &&\
    cd rar &&\
    make
