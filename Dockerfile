FROM searchathing/ubuntu

ENV HOME /root
ENV DEBIAN_FRONTEND noninteractive

RUN cd /root && wget -O pendulum.gz https://github.com/titpetric/pendulum/releases/download/v0.1.180207-1512/pendulum-linux-amd64.gz && gunzip pendulum.gz && chmod +x pendulum

CMD ["/root/pendulum", "/doc"]
