FROM gcr.io/tensorflow/tensorflow:1.0.1
MAINTAINER Joseph Boyd <joseph.boyd@curie.fr>

RUN pip install pandas
RUN pip install scikit-image

WORKDIR /notebooks
RUN rm *

COPY main.ipynb /notebooks

RUN chmod 777 main.ipynb

RUN mkdir img
ADD img img/

RUN mkdir src
ADD src src/

RUN mkdir data
ADD data data/
