FROM python:3.11.9-slim

ENV PYTHONUNBUFFEREO=1

RUN apt update && apt upgrade -y

COPY requirements.txt requirements.txt

RUN pip install --upgrade pip && \
    pip install --requirement requirements.txt

COPY ./app.py ./app.py

CMD ["python","./app.py"]