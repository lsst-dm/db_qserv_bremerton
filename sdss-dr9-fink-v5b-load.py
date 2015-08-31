#! /usr/bin/env python

# Load the reference stars int plain MySQL. Add an HTM-based spatial index
# in case people want to query it with scisql.

from __future__ import print_function, with_statement
import subprocess

path_template = '/home/smm/sdss-dr9-fink-v5b/sdss-dr9-fink-v5b_in_{}.csv'
load_template = """LOAD DATA LOCAL INFILE '{}'
                   INTO TABLE sdss_dr9.fink_v5b
                   (u_err, decl, g, z_err, i, thing_id, i_err, r_err, r, u, ra, z, id, g_err)
                   SET htm_id_20 = scisql_s2HtmId(ra, decl, 20)"""

for i in xrange(690):
    path = path_template.format(i)
    print('Ingesting', path)
    subprocess.check_call(['mysql', '-e', load_template.format(path)])
