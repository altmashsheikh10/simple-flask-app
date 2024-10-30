FROM ubuntu:latest
RUN apt-get update && apt-get install -y python3 python3-pip
RUN pip3 install flask
COPY app.py /opt/
ENTRYPOINT [ "FLASK_APP=/opt/app.py flask run --port=8080 --host=0.0.0.0" ]