#!/bin/bash

# ---------------------------------------------------------------------------------------------------------------------
# ** info: populating the database
# ---------------------------------------------------------------------------------------------------------------------

# ** info: running the migrations
FILE=/home/build/migrations/17_02_2024.sql
echo "ejecutando el script $FILE"
if test -f "$FILE"; then
    echo "script $FILE encontrado"
    # mysql -u root < /home/build/migrations/17_02_2024.sql
else
    echo "script $FILE no encontrado"
fi
