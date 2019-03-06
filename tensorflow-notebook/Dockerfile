FROM jupyter/tensorflow-notebook as tensorflow
USER root
RUN apt-get update -qq &&\
    apt-get install -qq fonts-ipafont-gothic &&\
    apt-get clean
USER $NB_USER
RUN rm ~/.cache/matplotlib/fontList.json

FROM tensorflow as renom
RUN git clone https://github.com/ReNom-dev-team/ReNom.git
WORKDIR $HOME/ReNom
RUN pip install -r requirements.txt
RUN pip install -e .

WORKDIR $HOME
