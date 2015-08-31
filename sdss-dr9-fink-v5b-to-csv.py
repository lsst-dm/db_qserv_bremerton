#! /usr/bin/env python

# Transform SDSS DR9 FITS files into TSV files that can be loaded into MySQL

from __future__ import print_function, with_statement

import math
import os
import pyfits

in_dir = '/lsst7/astrometry_net_data/sdss-dr9-fink-v5b'
out_dir = '/home/smm/sdss-dr9-fink-v5b/'

def format_value(v):
    if v is None:
        return '\\N'
    elif isinstance(v, basestring):
        return v
    elif math.isinf(v) or math.isnan(v):
        return '\\N'
    else:
        return repr(v)

for path in os.listdir(in_dir):
    if '_in_' not in path:
        continue
    #import pdb; pdb.set_trace()
    with pyfits.open(os.path.join(in_dir, path)) as f:
        table = f[1].data
        out_path = os.path.join(out_dir, os.path.splitext(os.path.basename(path))[0] + '.csv')
        print('Transforming', path, 'to', out_path)
        with open(out_path, 'wb') as o:
            for row in table:
                o.write('\t'.join(format_value(v) for v in row))
                o.write('\n')

print('Done!')
