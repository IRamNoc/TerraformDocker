FROM python:3.8.10

WORKDIR /app
COPY . /app/

RUN pip install fastapi uvicorn

EXPOSE 8000

CMD ["uvicorn", "fastAPI:app", "--host", "0.0.0.0", "--port", "8000"]