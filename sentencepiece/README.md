# SentencePiece in Docker

A container of [SentencePiece](https://github.com/google/sentencepiece), 
pushed to https://hub.docker.com/r/vochicong/sentencepiece.

## Usage

    wget https://raw.githubusercontent.com/google/sentencepiece/master/data/wagahaiwa_nekodearu.txt
    docker run --rm -i -v $PWD:/work vochicong/sentencepiece \
        spm_train --input=wagahaiwa_nekodearu.txt --model_prefix=wagahaiwa_nekodearu --vocab_size=8000
    echo "吾輩は猫である。名前はまだ無い。" \
        | docker run --rm -i -v $PWD:/work vochicong/sentencepiece \
        spm_encode --model=wagahaiwa_nekodearu.model
