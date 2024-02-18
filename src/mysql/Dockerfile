# ---------------------------------------------------------------------------------------------------------------------
# ** stage 1: production image
# ---------------------------------------------------------------------------------------------------------------------

# ** info: declaration of the image base version
FROM mysql:8.0.36-bullseye

# ** info: declaration of the image env variables
ENV MYSQL_ROOT_PASSWORD=root

# ** info: declaration of the image working directory
ARG WORKDIR=/home/build

# ** info: creating the image working directory
RUN mkdir -p $WORKDIR

# ** info: copying the sql script files from the building context to the working directory
COPY ["migrations", "$WORKDIR/migrations/"]

# ** info: copying the shell install script from the building context to the initdb folder
COPY ["hooks/mount_db.sh", "/docker-entrypoint-initdb.d/"]

# ** info: copying the postgres config to the container
COPY ["config/my.cfg", "/etc/mysql/my.cfg"]

# ** info: converting the shell script to unix formatt
RUN apt-get update
RUN apt-get install -y dos2unix
RUN dos2unix /docker-entrypoint-initdb.d/mount_db.sh
