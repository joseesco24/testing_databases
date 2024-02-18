#!/bin/bash

# ---------------------------------------------------------------------------------------------------------------------
# ** info: populating the database
# ---------------------------------------------------------------------------------------------------------------------

# ** info: installations using postgres/root user
FILE=/home/build/migrations/17_02_2024.sql
echo "ejecutando el script $FILE"
if test -f "$FILE"; then
    echo "script $FILE encontrado"
    # pg_restore -U postgres -f /home/build/migrations/17_02_2024.sql
else
    echo "script $FILE no encontrado"
fi
