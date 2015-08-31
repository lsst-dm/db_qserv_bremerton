CREATE TABLE icMatch (
  `first` bigint(20) NOT NULL,
  `second` bigint(20) NOT NULL,
  distance double DEFAULT NULL,
  partitioningFlags int(11) NOT NULL,
  chunkId int(11) NOT NULL,
  subChunkId int(11) NOT NULL,
  KEY(first),
  KEY(second),
  KEY(subChunkId)
) ENGINE=MyISAM DEFAULT CHARSET=latin1
