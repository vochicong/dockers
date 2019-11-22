FROM ubuntu

ARG BUILDERS="cmake build-essential pkg-config libgoogle-perftools-dev git"
RUN apt-get update -y && apt-get install -y libtcmalloc-minimal4 $BUILDERS &&\
		git clone --depth 1 https://github.com/google/sentencepiece.git &&\
		cd sentencepiece && mkdir build && cd build && cmake .. &&\
		make -j $(nproc) && make install && ldconfig -v &&\
    apt-get remove -y $BUILDERS &&\
    apt-get -y autoremove && rm -rf /var/lib/apt/lists/*
RUN spm_train --input=sentencepiece/data/wagahaiwa_nekodearu.txt \
		--model_prefix=wagahaiwa_nekodearu --vocab_size=8000
RUN echo "吾輩は猫である。名前はまだ無い。" \
		| spm_encode --model=wagahaiwa_nekodearu.model
WORKDIR /work
