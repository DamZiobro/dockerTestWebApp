FROM python:3.4

RUN groupadd -r uwsgi && useradd -r -g uwsgi uwsgi
RUN pip install Flask uWSGI==2.0.8

#All below commands will be invoked from dir /app
WORKDIR /app
COPY app /app
COPY cmd.sh /

EXPOSE 9090 9091

#All below commands will be invoked as user uwsgi
USER uwsgi

CMD ["/cmd.sh"]
