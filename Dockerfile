FROM pandoc/latex:2.9.2
LABEL dockerimage=cv-boilerplate

RUN apk add -U make

# Google fonts
RUN wget --progress=bar:force:noscroll https://github.com/google/fonts/archive/main.tar.gz -O gf.tar.gz
RUN tar -xf gf.tar.gz
RUN mkdir -p /usr/share/fonts/truetype/google-fonts
RUN find $PWD/fonts-main/ -type f -regex "[^\[]*ttf" -exec install -m644 {} /usr/share/fonts/truetype/google-fonts/ \; || return 1
RUN rm -f gf.tar.gz
RUN fc-cache -f && rm -rf /var/cache/*

RUN tlmgr init-usertree

# dependencies for texlive
RUN tlmgr update --self
RUN tlmgr install marginnote
RUN tlmgr install sectsty

VOLUME [ "/data" ]
