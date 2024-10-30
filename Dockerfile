FROM ubuntu:latest
RUN apt-get update && apt-get install -y python3 python3-pip
RUN python3 -m venv ~/venv && source ~/venv/bin/activate && python3 -m pip install flask
COPY app.py /opt/
ENTRYPOINT [ "FLASK_APP=/opt/app.py flask run --port=8080 --host=0.0.0.0" ]