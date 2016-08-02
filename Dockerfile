FROM continuumio/anaconda3:4.0.0p0
MAINTAINER Tyler Benster

EXPOSE 8888

RUN pip install pyyaml

RUN mkdir /notebooks

RUN git clone https://github.com/tbenst/glia.git

RUN cd glia && python setup.py install

run conda install bokeh

VOLUME /notebooks
WORKDIR /notebooks

CMD jupyter notebook --no-browser --ip=0.0.0.0
