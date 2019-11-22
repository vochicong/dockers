# MeCab+NEologd in Docker

A container of [MeCab+NEologd](https://github.com/neologd/mecab-ipadic-neologd.git), 
pushed to https://hub.docker.com/r/vochicong/mecab-ipadic-neologd.

## Usage

    echo "8月3日に放送された「中居正広の金曜日のスマイルたちへ」(TBS系)で、1日たった5分でぽっこりおなかを解消するというダイエット方法を紹介。キンタロー。のダイエットにも密着。" \
    | docker run -i vochicong/mecab-ipadic-neologd -Owakati
