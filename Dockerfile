FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY ../../Block3/RestartedMiniProjectBlock3 .

EXPOSE 80

ENV FLASK_APP=main.py

CMD ["python", "main.py"]