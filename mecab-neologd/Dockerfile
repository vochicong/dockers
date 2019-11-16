FROM ubuntu

ARG BUILDERS="git make curl xz-utils file sudo"
RUN apt-get update && apt-get install -y \
    mecab \
    mecab-ipadic-utf8 \
    libmecab-dev \
    language-pack-ja \
    $BUILDERS &&\ 
    git clone --depth 1 https://github.com/neologd/mecab-ipadic-neologd.git neologd &&\
    yes yes | neologd/bin/install-mecab-ipadic-neologd -n &&\
    rm -Rf neologd &&\
    yes nopass nopass | sudo passwd &&\
    apt-get remove -y $BUILDERS &&\
    apt-get -y autoremove && rm -rf /var/lib/apt/lists/*
ENV LANG=ja_JP.UTF-8 \
    LANGUAGE=ja_JP.UTF-8 \
    LC_ALL=ja_JP.UTF-8
COPY mecab_neologd.sh /usr/bin/
ENTRYPOINT ["/usr/bin/mecab_neologd.sh"]
