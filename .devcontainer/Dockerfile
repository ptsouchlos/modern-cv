FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    ca-certificates \
    curl \
    fontconfig \
    git \
    imagemagick \
    libssl-dev \
    pkg-config \
    unzip \
    wget \
  && wget -nv -O /tmp/githubcli-archive-keyring.gpg https://cli.github.com/packages/githubcli-archive-keyring.gpg \
  && mkdir -p -m 755 /etc/apt/keyrings \
  && cp /tmp/githubcli-archive-keyring.gpg /etc/apt/keyrings/githubcli-archive-keyring.gpg \
  && chmod go+r /etc/apt/keyrings/githubcli-archive-keyring.gpg \
  && echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" > /etc/apt/sources.list.d/github-cli.list \
  && apt-get update && apt-get install -y --no-install-recommends gh \
  && rm -rf /var/lib/apt/lists/* /tmp/githubcli-archive-keyring.gpg

RUN useradd --create-home --shell /bin/bash contributor
USER contributor
WORKDIR /home/contributor

ENV MISE_DATA_DIR=/home/contributor/.local/share/mise
ENV MISE_INSTALL_PATH=/home/contributor/.local/bin/mise
ENV PATH="/home/contributor/.local/bin:/home/contributor/.local/share/mise/shims:${PATH}"

RUN curl https://mise.run | sh

COPY --chown=contributor:contributor mise.toml /home/contributor/.mise-bootstrap/mise.toml
RUN cd /home/contributor/.mise-bootstrap && mise trust -a && mise install

COPY --chown=contributor:contributor scripts/install-roboto scripts/install-source-sans scripts/install-fontawesome /home/contributor/.mise-bootstrap/scripts/
RUN chmod +x /home/contributor/.mise-bootstrap/scripts/* \
  && /home/contributor/.mise-bootstrap/scripts/install-roboto \
  && /home/contributor/.mise-bootstrap/scripts/install-source-sans \
  && /home/contributor/.mise-bootstrap/scripts/install-fontawesome

USER root
RUN cp -a /home/contributor/.local/share/fonts/. /usr/local/share/fonts/ \
  && fc-cache -f
USER contributor

WORKDIR /workspace
