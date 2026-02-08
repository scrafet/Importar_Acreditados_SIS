FROM mcr.microsoft.com/mssql/server:2019-latest
USER root
WORKDIR /init
COPY init.sql /init/
# Sin ENTRYPOINT para que docker-compose pueda usar 'command' libremente
