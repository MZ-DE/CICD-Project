FROM python:3.12-slim

WORKDIR /app

COPY requirements.txt ./
RUN pip install -r requirements.txt

COPY /app .

ENV FLASK_APP=app.py
EXPOSE 5000
CMD [ "flask", "run", "--host", "0.0.0.0", "--port", "5000"]