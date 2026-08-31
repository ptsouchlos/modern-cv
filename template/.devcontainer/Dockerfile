FROM ghcr.io/typst/typst:0.14.2

RUN apk add bash git wget unzip fontconfig

ENV HOME=/home/typst

COPY scripts/install-roboto scripts/install-source-sans scripts/install-fontawesome /tmp/font-scripts/
RUN chmod +x /tmp/font-scripts/* \
  && /tmp/font-scripts/install-roboto \
  && /tmp/font-scripts/install-source-sans \
  && /tmp/font-scripts/install-fontawesome \
  && rm -rf /tmp/font-scripts
