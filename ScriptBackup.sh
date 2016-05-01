#!/bin/bash
FECHA=$(date +%d-%m-%Y_%H:%M:%S)

pg_dump -i -h localhost -p 5432 -U postgres -F c -b -v -f "/home/gaby/Escritorio/bk_musicdb_usergithub$FECHA.backup" musicdb_test
chmod 755 /home/gaby/Escritorio/bk_musicdb_usergithub$FECHA.backup
pg_dump -i -h localhost -p 5432 -U postgres -F p -b -v -f "/home/gaby/Escritorio/bk_musicdb_usergithub$FECHA" musicdb_test
chmod 755 /home/gaby/Escritorio/bk_musicdb_usergithub$FECHA

#Cambiar la direccion dependiendo de donde se realizaran los backups
