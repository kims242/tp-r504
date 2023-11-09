FROM ubuntu:22.04
RUN apt-get update && apt-get upgrade -y
RUN apt-get -y install npm
RUN npm --version
RUN npm install -g @dbml/cli
RUN nodejs --version
RUN npm install -g @softwaretechnik/dbml-renderer
WORKDIR srv/
CMD srv/dbml2sql.sh
