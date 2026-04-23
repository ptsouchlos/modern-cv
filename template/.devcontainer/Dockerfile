FROM ghcr.io/typst/typst:0.14.2

# Install git and font-roboto
RUN apk add git font-roboto

# Install Source Sans Pro
RUN wget https://github.com/adobe-fonts/source-sans/releases/download/3.006R/source-sans-pro-3.006R.zip
RUN mkdir -p /usr/share/fonts/source-sans-pro
RUN unzip source-sans-pro-3.006R.zip -d /usr/share/fonts/source-sans-pro
RUN rm source-sans-pro-3.006R.zip

# Install Source Sans 3
RUN wget https://github.com/adobe-fonts/source-sans/releases/download/3.052R/OTF-source-sans-3.052R.zip
RUN mkdir -p /usr/share/fonts/source-sans-3
RUN unzip OTF-source-sans-3.052R.zip -d /usr/share/fonts/source-sans-3
RUN rm OTF-source-sans-3.052R.zip

# Install Font Awesome
RUN wget https://use.fontawesome.com/releases/v7.1.0/fontawesome-free-7.1.0-desktop.zip
RUN mkdir -p /usr/share/fonts/fontawesome
RUN unzip fontawesome-free-7.1.0-desktop.zip -d /usr/share/fonts/fontawesome
RUN rm fontawesome-free-7.1.0-desktop.zip
