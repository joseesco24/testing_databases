#!/bin/bash

# ---------------------------------------------------------------------------------------------------------------------
# ** info: moving custom postgresql.conf file
# ---------------------------------------------------------------------------------------------------------------------

# cp --force postgresql.conf /var/lib/postgresql/data/

# ---------------------------------------------------------------------------------------------------------------------
# ** info: schema 1 installation
# ---------------------------------------------------------------------------------------------------------------------

# ** info: installations using postgres/root user
FILE=/home/build/schema_1/postgres/install/0_install.sql
echo "ejecutando el script $FILE"
if test -f "$FILE"; then
    echo "script $FILE encontrado"
    psql -W postgres -U postgres -d users_db -a -f $FILE
else
    echo "script $FILE no encontrado"
fi

# ** info: installations using schema 1 owner user
FILE=/home/build/schema_1/schema_1_owner/install/0_install.sql
echo "ejecutando el script $FILE"
if test -f "$FILE"; then
    echo "script $FILE encontrado"
    psql -W schema_1_owner -U schema_1_owner -d users_db -a -f $FILE
else
    echo "script $FILE no encontrado"
fi

# ** info: installations using schema 1 user
FILE=/home/build/schema_1/schema_1_user/install/0_install.sql
echo "ejecutando el script $FILE"
if test -f "$FILE"; then
    echo "script $FILE encontrado"
    psql -W schema_1_user -U schema_1_user -d users_db -a -f $FILE
else
    echo "script $FILE no encontrado"
fi

# ---------------------------------------------------------------------------------------------------------------------
# ** info: schema 2 installation
# ---------------------------------------------------------------------------------------------------------------------

# ** info: installations using postgres/root user
FILE=/home/build/schema_2/postgres/install/0_install.sql
echo "ejecutando el script $FILE"
if test -f "$FILE"; then
    echo "script $FILE encontrado"
    psql -W postgres -U postgres -d users_db -a -f $FILE
else
    echo "script $FILE no encontrado"
fi

# ** info: installations using schema 2 owner user
FILE=/home/build/schema_2/schema_2_owner/install/0_install.sql
echo "ejecutando el script $FILE"
if test -f "$FILE"; then
    echo "script $FILE encontrado"
    psql -W schema_2_owner -U schema_2_owner -d users_db -a -f $FILE
else
    echo "script $FILE no encontrado"
fi

# ** info: installations using schema 2 user
FILE=/home/build/schema_2/schema_2_user/install/0_install.sql
echo "ejecutando el script $FILE"
if test -f "$FILE"; then
    echo "script $FILE encontrado"
    psql -W schema_2_user -U schema_2_user -d users_db -a -f $FILE
else
    echo "script $FILE no encontrado"
fi

# ---------------------------------------------------------------------------------------------------------------------
# ** info: creating tv channel new database
# ---------------------------------------------------------------------------------------------------------------------

psql -W postgres -U postgres -d postgres -c "create database tv_channel_database;"

# ---------------------------------------------------------------------------------------------------------------------
# ** info: tv programation schema installation
# ---------------------------------------------------------------------------------------------------------------------

# ** info: installations using postgres/root user
FILE=/home/build/tv_programation_schema/postgres/install/0_install.sql
echo "ejecutando el script $FILE"
if test -f "$FILE"; then
    echo "script $FILE encontrado"
    psql -W postgres -U postgres -d tv_channel_database -a -f $FILE
else
    echo "script $FILE no encontrado"
fi

# ** info: installations using schema 2 owner user
FILE=/home/build/tv_programation_schema/tv_programation_schema_owner/install/0_install.sql
echo "ejecutando el script $FILE"
if test -f "$FILE"; then
    echo "script $FILE encontrado"
    psql -W tv_programation_schema_owner -U tv_programation_schema_owner -d tv_channel_database -a -f $FILE
else
    echo "script $FILE no encontrado"
fi

# ** info: installations using schema 2 user
FILE=/home/build/tv_programation_schema/tv_programation_schema_user/install/0_install.sql
echo "ejecutando el script $FILE"
if test -f "$FILE"; then
    echo "script $FILE encontrado"
    psql -W tv_programation_schema_user -U tv_programation_schema_user -d tv_channel_database -a -f $FILE
else
    echo "script $FILE no encontrado"
fi
