FROM ubuntu:latest
RUN apt-get update apt-get install python python-pip
RUN pip install flask
COPY app.py /opt/
ENTRYPOINT [ "FLASK_APP=/opt/app.py flask run --port=8080 --host=0.0.0.0" ]