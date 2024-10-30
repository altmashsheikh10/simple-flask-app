FROM ubuntu:latest
RUN apt-get update && apt-get install -y python3 python3-pip python3.12-venv
RUN python3 -m venv ~/venv && . ~/venv/bin/activate && python3 -m pip install flask
COPY app.py /opt/
ENV FLASK_APP=/opt/app.py
ENTRYPOINT [ "flask", "run", "--port=8080", "--host=0.0.0.0" ]