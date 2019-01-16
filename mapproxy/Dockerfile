FROM amsterdam/python
MAINTAINER datapunt@amsterdam.nl

EXPOSE 8000

RUN adduser --system datapunt

RUN chown datapunt -R /app
WORKDIR /app

COPY src/* /app/
COPY docker-entrypoint.sh /bin

RUN pip install MapProxy==1.11.0

USER datapunt

CMD /bin/docker-entrypoint.sh
