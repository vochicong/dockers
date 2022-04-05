FROM rapidsai/rapidsai-dev:21.10-cuda11.0-devel-ubuntu18.04-py3.7

RUN source activate rapids && conda install -c rapidsai cudnn==8.0.4 && pip install mxnet-cu110 gluonts
