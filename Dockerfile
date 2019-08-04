# 6c3390a9292e latest in July 2019
FROM jupyter/tensorflow-notebook:6c3390a9292e

COPY requirements.txt $HOME/requirements.txt
RUN pip install --require-hashes -r $HOME/requirements.txt
RUN python -m nltk.downloader all
