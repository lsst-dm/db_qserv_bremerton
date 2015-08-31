#! /bin/bash

# Dump schemas from plain MySQL; some editing is then required for qserv
# (e.g. to add chunkId/subChunkId columns)

MYSQL="mysql -A -h lsst-db.ncsa.illinois.edu --disable-column-names"

for TABLE in src icSrc srcMatch icMatch deepCoadd_meas deepCoadd_forced_src deepCoadd_ref ; do
    $MYSQL -e "CREATE TABLE smm_temp.$TABLE AS SELECT * FROM smm_bremerton.$TABLE LIMIT 1"
    $MYSQL --vertical -e "SET sql_quote_show_create=0; SHOW CREATE TABLE smm_temp.$TABLE" | tail -n +3 > /home/smm/bremerton/sql/$TABLE.sql
    $MYSQL -e "DROP TABLE smm_temp.$TABLE"
done

