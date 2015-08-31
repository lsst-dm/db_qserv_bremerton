#! /bin/bash
set -e

QSERV_RUN_DIR=/u2/smm/run/bremerton

mkdir -p empty

qserv-data-loader.py \
    --secret $QSERV_RUN_DIR/etc/wmgr.secret \
    --delete-tables \
    --empty-chunks empty/src.txt \
    --index-db qservMeta \
    --css-remove \
    --config conf/common.cfg \
    --config conf/src.cfg \
    bremerton src sql/src.sql dump/src.tsv

qserv-data-loader.py \
    --secret $QSERV_RUN_DIR/etc/wmgr.secret \
    --delete-tables \
    --empty-chunks empty/icSrc.txt \
    --index-db qservMeta \
    --css-remove \
    --config conf/common.cfg \
    --config conf/icSrc.cfg \
    bremerton icSrc sql/icSrc.sql dump/icSrc.tsv

qserv-data-loader.py \
    --secret $QSERV_RUN_DIR/etc/wmgr.secret \
    --delete-tables \
    --empty-chunks empty/sdss_dr9_fink_v5b.txt \
    --index-db qservMeta \
    --css-remove \
    --config conf/common.cfg \
    --config conf/sdss_dr9_fink_v5b.cfg \
    bremerton sdss_dr9_fink_v5b sql/sdss_dr9_fink_v5b.sql dump/sdss-dr9-fink-v5b.tsv

qserv-data-loader.py \
    --secret $QSERV_RUN_DIR/etc/wmgr.secret \
    --delete-tables \
    --empty-chunks empty/deepCoadd_ref.txt \
    --index-db qservMeta \
    --css-remove \
    --config conf/common.cfg \
    --config conf/deepCoadd_ref.cfg \
    bremerton deepCoadd_ref sql/deepCoadd_ref.sql dump/deepCoadd_ref.tsv

qserv-data-loader.py \
    --secret $QSERV_RUN_DIR/etc/wmgr.secret \
    --delete-tables \
    --empty-chunks empty/deepCoadd_meas.txt \
    --css-remove \
    --config conf/common.cfg \
    --config conf/deepCoadd_meas.cfg \
    bremerton deepCoadd_meas sql/deepCoadd_meas.sql dump/deepCoadd_meas.tsv

qserv-data-loader.py \
    --secret $QSERV_RUN_DIR/etc/wmgr.secret \
    --delete-tables \
    --empty-chunks empty/deepCoadd_forced_src.txt \
    --css-remove \
    --config conf/common.cfg \
    --config conf/deepCoadd_forced_src.cfg \
    bremerton deepCoadd_forced_src sql/deepCoadd_forced_src.sql dump/deepCoadd_forced_src.tsv

qserv-data-loader.py \
    --secret $QSERV_RUN_DIR/etc/wmgr.secret \
    --delete-tables \
    --css-remove \
    --config conf/common.cfg \
    --config conf/icMatch.cfg \
    bremerton icMatch sql/icMatch.sql dump/icMatch.tsv

qserv-data-loader.py \
    --secret $QSERV_RUN_DIR/etc/wmgr.secret \
    --delete-tables \
    --css-remove \
    --config conf/common.cfg \
    --config conf/srcMatch.cfg \
    bremerton srcMatch sql/srcMatch.sql dump/srcMatch.tsv

