FROM --platform=linux/arm64 python:3.9-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . /app/

ENV PYTHONPATH=/app

EXPOSE 80

ENV FLASK_APP=main.py

CMD ["python", "main.py"]