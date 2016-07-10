FROM jupyter/notebook

COPY requirements.txt /usr/src/
RUN pip install -r /usr/src/requirements.txt && \
    pip3 install -r /usr/src/requirements.txt
