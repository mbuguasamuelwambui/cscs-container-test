FROM nvcr.io/nvidia/pytorch:24.09-py3
WORKDIR /workspace

RUN apt-get update && apt-get install -y git nano wget curl &&             rm -rf /var/lib/apt/lists/*

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
