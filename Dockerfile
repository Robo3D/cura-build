FROM cura_build_env:3.4

ENV ROBOCURABUILD=/root/cura-build

WORKDIR /root
COPY . ./cura-build

WORKDIR $ROBOCURABUILD
RUN mkdir build 
COPY build_image.sh build_image.sh
RUN chmod +x build_image.sh