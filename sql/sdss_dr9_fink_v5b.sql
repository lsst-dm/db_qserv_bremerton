CREATE TABLE sdss_dr9_fink_v5b (
  id bigint(20) NOT NULL,
  thing_id bigint(20) NOT NULL,
  ra double NOT NULL,
  decl double NOT NULL,
  u float DEFAULT NULL,
  u_err float DEFAULT NULL,
  g float DEFAULT NULL,
  g_err float DEFAULT NULL,
  r float DEFAULT NULL,
  r_err float DEFAULT NULL,
  i float DEFAULT NULL,
  i_err float DEFAULT NULL,
  z float DEFAULT NULL,
  z_err float DEFAULT NULL,
  htm_id_20 bigint(20) NOT NULL,
  chunkId int(11) NOT NULL,
  subChunkId int(11) NOT NULL,
  PRIMARY KEY (id),
  KEY (htm_id_20),
  KEY (subChunkId),
  KEY (thing_id)
) ENGINE=MyISAM