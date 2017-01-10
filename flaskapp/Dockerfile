FROM python:3.4

RUN pip install Flask uWSGI==2.0.8
WORKDIR /app
COPY app /app

CMD [ "uwsgi", "--http", "0.0.0.0:1010", "--wsgi-file", "/app/flaskapp.py", "--callable" , "flaskApp", "--stats", "0.0.0.0:1111" ]
