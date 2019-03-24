FROM centos:7
MAINTAINER Docker Education Team <education@docker.com>

RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && \
    python get-pip.py



ADD ./webapp/requirements.txt /tmp/requirements.txt

RUN pip install -qr /tmp/requirements.txt

ADD ./webapp /opt/webapp/

WORKDIR /opt/webapp

EXPOSE 5000

CMD ["python", "app.py"]

