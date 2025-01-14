FROM ubuntu:24.04 AS builder

ARG fx_file

RUN apt-get update && apt-get install -yqq wget xz-utils

WORKDIR /opt/server

RUN wget ${fx_file} && \
    tar xf fx.tar.xz && \
    rm -f fx.tar.xz && \
    chown -R root:root /opt/server

FROM ubuntu:24.04

WORKDIR /opt/server

COPY --from=builder /opt/server /opt/server/

EXPOSE 40120
EXPOSE 40120/udp
EXPOSE 30120
EXPOSE 30120/udp
EXPOSE 10111

CMD [ "./run.sh" ]
