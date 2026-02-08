FROM mcr.microsoft.com/mssql/server:2019-latest
USER root
RUN mkdir -p /init-scripts
WORKDIR /init-scripts
COPY . /init-scripts/
USER mssql
