FROM debian
COPY setup /tmp/setup
RUN bash /tmp/setup && rm /tmp/setup

RUN useradd -ms /bin/bash njh
USER njh
WORKDIR /home/njh

EXPOSE 22000:22000/udp

COPY udp-listener udp-listener

CMD ./udp-listener
