FROM ubuntu:18.04

RUN apt-get update && apt-get install -y \
    python3.7 \
    python3-pip \
    build-essential \
    libssl-dev \
    libffi-dev \
    python3.7-dev

COPY requirements.txt /app/requirements.txt

RUN python3.7 -m pip install -r /app/requirements.txt

COPY . /app

ENV PYTHONPATH /app

EXPOSE 8000

CMD ["python3.7", "/app/main.py"]
