#! /bin/bash

# Ingest into a plain MySQL instance. Requires a recent daf_ingest and obs_subaru.

REPO=/raid/lauren/rerun/LSST/STRIPE82L/v2/
HOST=lsst-db.ncsa.illinois.edu
DB=smm_bremerton

for DS in src icSrc srcMatch icMatch ; do
    ingestCatalog.py $REPO --host $HOST --database $DB \
        --table run_$DS --view $DS --dstype $DS \
        --id pointing=533^671^672
done

PATCH="tract=0 patch=7,7"

for DS_SUFFIX in det forced_src ; do
    DS=deepCoadd_$DS_SUFFIX
    for FILTER in HSC-I HSC-R HSC-Y ; do
        ingestCatalog.py $REPO --host $HOST --database $DB \
            --table run_$DS --view $DS --dstype $DS \
            --id filter=$FILTER $PATCH
    done
done

# deepCoadd_meas and deepCoadd_ref have consistent IDs across filters,
# so create a regular index on id, not a unique one.
for DS_SUFFIX in meas ; do
    DS=deepCoadd_$DS_SUFFIX
    for FILTER in HSC-I HSC-R HSC-Y ; do
        ingestCatalog.py $REPO --host $HOST --database $DB \
            --table run_$DS --view $DS --dstype $DS \
            --config idFieldName=abcdefg --config extraColumns="INDEX(id)" \
            --id filter=$FILTER $PATCH
    done
done

for DS_SUFFIX in ref mergeDet ; do
    DS=deepCoadd_$DS_SUFFIX
    ingestCatalog.py $REPO --host $HOST --database $DB \
        --table run_$DS --view $DS --dstype $DS \
        --id $PATCH
done

