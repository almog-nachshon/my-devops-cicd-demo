FROM python:3.11-slim

WORKDIR /app

ARG VERSION
ENV VERSION=${VERSION}

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY hello_world.py .

CMD ["python", "hello_world.py"]
