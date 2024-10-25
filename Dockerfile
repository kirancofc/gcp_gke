FROM python:3.8-slim-buster

WORKDIR /app

COPY . .

RUN pip3 install -r requirements.txt

ENTRYPOINT [ "python3" ]

CMD [ "-m", 'flask', 'run', '--host=0.0.0.0' ]