FROM python:3.13-slim

WORKDIR /app

COPY . /app

RUN apt-get update && \
    apt-get install -y \
    awscli \
    ffmpeg \
    libsm6 \
    libxext6 \
    unzip && \
    apt-get clean

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "app.py"]