FROM ghcr.io/typst/typst:0.14.2

RUN apk add git wget unzip fontconfig

ENV HOME=/home/typst

# Mirrors scripts/install-{roboto,source-sans,fontawesome} — can't COPY them
# here, template/ ships standalone via typst init and excludes scripts/ (see
# typst.toml). Keep versions in sync by hand.
RUN wget -O ~/roboto.zip 'https://github.com/googlefonts/roboto-3-classic/releases/download/v3.015/Roboto_v3.015.zip' \
  && mkdir -p ~/.local/share/fonts \
  && unzip -j ~/roboto.zip 'unhinted/static/*.ttf' -d ~/.local/share/fonts \
  && rm ~/roboto.zip

RUN wget -O ~/source-sans.zip https://github.com/adobe-fonts/source-sans/releases/download/3.052R/OTF-source-sans-3.052R.zip \
  && mkdir -p ~/source-sans-fonts \
  && unzip ~/source-sans.zip -d ~/source-sans-fonts \
  && mkdir -p ~/.local/share/fonts \
  && find ~/source-sans-fonts -type f -name "*.otf" -exec cp {} ~/.local/share/fonts \; \
  && rm ~/source-sans.zip \
  && rm -rf ~/source-sans-fonts

RUN wget -O ~/fontawesome.zip https://github.com/FortAwesome/Font-Awesome/releases/download/7.3.0/fontawesome-free-7.3.0-desktop.zip \
  && mkdir -p ~/fontawesome-fonts \
  && unzip ~/fontawesome.zip -d ~/fontawesome-fonts \
  && mkdir -p ~/.local/share/fonts \
  && find ~/fontawesome-fonts -type f -name "*.otf" -exec cp {} ~/.local/share/fonts \; \
  && rm ~/fontawesome.zip \
  && rm -rf ~/fontawesome-fonts

RUN fc-cache -f -v
