#! /bin/bash
set -e

# Dump tables loaded into plain MySQL in a form that the qserv partitioner can understand.

MYSQL="mysql -A -h lsst-db.ncsa.illinois.edu -B --quick --disable-column-names"

$MYSQL -e "SELECT * FROM sdss_dr9.fink_v5b" > /home/smm/bremerton/dump/sdss_dr9_fink_v5b.tsv

for TABLE in src icSrc deepCoadd_forced_src deepCoadd_ref ; do
    $MYSQL -e "SELECT * FROM smm_bremerton.$TABLE" > /home/smm/bremerton/dump/$TABLE.tsv
done

$MYSQL -e "SELECT m.*, r.coord_ra, r.coord_dec FROM smm_bremerton.deepCoadd_meas as m INNER JOIN smm_bremerton.deepCoadd_ref AS r ON r.id = m.id" > /home/smm/bremerton/dump/deepCoadd_meas.tsv

$MYSQL -e "SELECT m.*, r.ra, r.decl, s.coord_ra, s.coord_dec FROM smm_bremerton.icMatch AS m LEFT JOIN sdss_dr9.fink_v5b AS r ON (m.first = r.id) LEFT JOIN smm_bremerton.icSrc AS s ON (m.second = s.id)" > /home/smm/bremerton/dump/icMatch.tsv

$MYSQL -e "SELECT m.*, r.ra, r.decl, s.coord_ra, s.coord_dec FROM smm_bremerton.srcMatch AS m LEFT JOIN sdss_dr9.fink_v5b AS r ON (m.first = r.id) LEFT JOIN smm_bremerton.src AS s ON (m.second = s.id)" > /home/smm/bremerton/dump/srcMatch.tsv
