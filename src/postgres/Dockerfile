# ---------------------------------------------------------------------------------------------------------------------
# ** stage 1: production image
# ---------------------------------------------------------------------------------------------------------------------

# ** info: declaration of the image base version
FROM postgres:16.0

# ** info: declaration of the image env variables
ENV POSTGRES_DB=users_db
ENV POSTGRES_PASSWORD=postgres
ENV POSTGRES_USER=postgres

# ** info: declaration of the image working directory
ARG WORKDIR=/home/build

# ** info: creating the image working directory
RUN mkdir -p $WORKDIR

# ** info: copying the sql script files from the building context to the working directory
COPY ["schema_1", "$WORKDIR/schema_1/"]
COPY ["schema_2", "$WORKDIR/schema_2/"]
COPY ["tv_programation_schema", "$WORKDIR/tv_programation_schema/"]

# ** info: copying the postgres config file from the building context to the initdb folder
COPY ["postgresql.conf", "/"]

# ** info: copying the shell install script from the building context to the initdb folder
COPY ["mount_db.sh", "/docker-entrypoint-initdb.d/"]

# ** info: converting the shell script to unix formatt
RUN apt-get update
RUN apt-get install -y dos2unix
RUN dos2unix /docker-entrypoint-initdb.d/mount_db.sh