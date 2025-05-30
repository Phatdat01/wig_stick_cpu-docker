FROM python:3.10-slim

RUN apt-get update && apt-get install -y \
    git \
    cmake \
    g++ \
    make \
    libopenblas-dev \
    liblapack-dev \
    libx11-dev \
    libgl1 \
    libglib2.0-0 \
    python3-dev \
    libjpeg-dev \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY wig_stick /app

RUN pip install -r requirement.txt

EXPOSE 5000

CMD ["python", "api.py"]