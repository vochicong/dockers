#!/bin/sh
/usr/bin/mecab -d $(mecab-config --dicdir)/mecab-ipadic-neologd/ "$@" -
