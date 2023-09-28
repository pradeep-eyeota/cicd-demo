FROM python:3-alpine

WORKDIR /app

COPY src/requirements.txt .
COPY src/app.py .
RUN pip install -r requirements.txt

EXPOSE 8080

CMD ["python", "app.py"]