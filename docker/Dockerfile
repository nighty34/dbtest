FROM postgres:16

RUN mkdir -p /docker-entrypoint-initdb.d
COPY docker/init_script.sh /docker-entrypoint-initdb.d

RUN mkdir /scripts
COPY *.sql /scripts/
