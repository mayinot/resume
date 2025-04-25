FROM ubuntu:22.04
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q && apt-get install -qy \
    curl jq \
    texlive-latex-base \
    texlive-fonts-recommended \
    texlive-latex-recommended \
    python3-pygments gnuplot make git \
    && rm -rf /var/lib/apt/lists/*

RUN echo "Installing packages..." && \
    apt-get update -q && apt-get install -qy ...


WORKDIR /data
VOLUME ["/data"]