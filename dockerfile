from python:3.13-slim-buster
workdir /app
copy . /app
run apt update -y && apt install awscli -y
run pip install -r requirements.txt
cmd ["python3", "app.py"]