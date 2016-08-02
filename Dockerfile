FROM continuumio/anaconda3:4.0.0p0
MAINTAINER Tyler Benster

EXPOSE 8888

RUN pip install pyyaml

RUN mkdir /notebooks

RUN git clone https://github.com/tbenst/glia.git

RUN cd glia && python setup.py install

# TODO install octave and chronux
# RUN apt-get update && apt-get install -y \
# 	octave \
# 	unzip

# RUN wget http://chronux.org/chronuxFiles/filesReleases/chronux_2_12.zip

RUN conda install bokeh

VOLUME /notebooks
WORKDIR /notebooks

CMD jupyter notebook --no-browser --ip=0.0.0.0
