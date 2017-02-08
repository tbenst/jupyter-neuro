FROM continuumio/anaconda3:4.3.0
MAINTAINER Tyler Benster


EXPOSE 8888


RUN mkdir /notebooks


# TODO install octave and chronux
# RUN apt-get update && apt-get install -y \
# 	octave \
# 	unzip

# RUN wget http://chronux.org/chronuxFiles/filesReleases/chronux_2_12.zip

RUN conda install bokeh

RUN pip install \
	seaborn

# hack to rerun clone...
# ARG GLIA_VER=unknown
# RUN GLIA_VER=${GLIA_VER} && git clone https://github.com/tbenst/glia.git \
RUN git clone https://github.com/tbenst/glia.git \
    && cd glia && python setup.py install

ARG GLIA_VER=unknown
RUN GLIA_VER=${GLIA_VER} && git clone https://github.com/tbenst/jupyter_webppl.git && \
    cd jupyter_webppl && python setup.py install

VOLUME /notebooks
WORKDIR /notebooks
CMD jupyter notebook --no-browser --ip=0.0.0.0
