FROM amsterdam/python
MAINTAINER datapunt@amsterdam.nl

EXPOSE 8000

RUN adduser --system datapunt

RUN chown datapunt -R /app
WORKDIR /app

RUN pip install MapProxy==1.11.0

COPY ./docker/docker-entrypoint.sh /bin
COPY ./docker/seed.sh /bin

USER datapunt

CMD /bin/docker-entrypoint.sh
