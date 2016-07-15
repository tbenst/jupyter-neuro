FROM continuumio/anaconda3:4.0.0p0
MAINTAINER Tyler Benster

EXPOSE 8888

RUN pip install pyyaml

RUN mkdir /notebooks

VOLUME /notebooks
WORKDIR /notebooks

CMD jupyter notebook --no-browser --ip=0.0.0.0