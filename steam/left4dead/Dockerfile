FROM steam-base

COPY . /steam_cmd

RUN cd ~/steamcmd && \
    ./steamcmd.sh +runscript /steam_cmd/hl2dm.cmd
