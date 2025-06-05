FROM ubuntu:bionic

RUN apt-get update \
 && apt-get install -y --no-install-recommends \
                    python-pip python-setuptools python-wheel \
                    locales tzdata \
                    ca-certificates \
                    strace gdb lsof locate net-tools htop iputils-ping dnsutils \
                    python2.7-dbg python2.7 libpython2.7 python-dbg libpython-dbg \
                    curl nano vim tree less telnet patch \
                    graphviz sqlite3 \
                    dumb-init \
                    xsltproc \
 && rm -rf /var/lib/apt/lists/*

RUN locale-gen en_US.UTF-8

COPY /venus /planet/code
# COPY /static /planet/static
COPY config.ini /planet/config.ini

VOLUME /data
WORKDIR /planet

# ENTRYPOINT ["dumb-init"]

CMD ["python2.7", "code/planet.py", "config.ini"]
