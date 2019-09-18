FROM miogs/docker-tvheadend:latest

RUN apk add --no-cache \
    gcc \
    libffi-dev \
    linux-headers \
    musl-dev \
    openssl-dev \
    python \
    python2-dev

RUN python -m ensurepip
RUN pip install --upgrade pip

RUN pip install streamlink

############## runtime stage ##############
# FROM linuxserver/tvheadend:latest

# copy local files and buildstage artifacts
# COPY --from=buildstage /usr/bin/streamlink /usr/bin

# copy scripts
COPY root/ /
RUN chmod 755 /opt/streamlink*