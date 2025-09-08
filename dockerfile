FROM python:3.11
WORKDIR /app

# If you don't have requirements.txt, install directly
RUN pip install flask

COPY . .

CMD ["python", "app.py"]
