from python:3.8-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

copy . .

CMD ["python", "-m", "flask", "run", "--host=0.0.0.0"]