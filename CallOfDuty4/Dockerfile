FROM debian:latest

# update
RUN dpkg --add-architecture i386 && \
    apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y curl bzip2 lib32z1 lib32ncurses5 lib32stdc++6

# add server files
ADD ./gamefiles/ /home/cod4/
ADD ./serverfiles/ /home/cod4/

# add mods files
ADD ./mods/promod/pml220/ /home/cod4/Mods/pml220/

# add base configuration
ADD ./configs/server.cfg /home/cod4/main/server.cfg

WORKDIR /home/cod4/
RUN chmod +x ./cod4_lnxded

CMD ./cod4_lnxded +set dedicated 1 +sv_pure 1 +exec server.cfg +map_rotate
