CREATE TABLE deepCoadd_forced_src (
  objectId bigint(20) NOT NULL,
  coord_ra double DEFAULT NULL,
  coord_dec double DEFAULT NULL,
  parentObjectId bigint(20) NOT NULL,
  base_TransformedCentroid_x double DEFAULT NULL,
  base_TransformedCentroid_y double DEFAULT NULL,
  base_TransformedCentroid_flag bit(1) NOT NULL,
  base_TransformedShape_xx double DEFAULT NULL,
  base_TransformedShape_yy double DEFAULT NULL,
  base_TransformedShape_xy double DEFAULT NULL,
  base_TransformedShape_flag bit(1) NOT NULL,
  base_CircularApertureFlux_3_0_flux double DEFAULT NULL,
  base_CircularApertureFlux_3_0_fluxSigma double DEFAULT NULL,
  base_CircularApertureFlux_3_0_flag bit(1) NOT NULL,
  base_CircularApertureFlux_3_0_flag_apertureTruncated bit(1) NOT NULL,
  base_CircularApertureFlux_3_0_flag_sincCoeffsTruncated bit(1) NOT NULL,
  base_CircularApertureFlux_4_5_flux double DEFAULT NULL,
  base_CircularApertureFlux_4_5_fluxSigma double DEFAULT NULL,
  base_CircularApertureFlux_4_5_flag bit(1) NOT NULL,
  base_CircularApertureFlux_4_5_flag_apertureTruncated bit(1) NOT NULL,
  base_CircularApertureFlux_4_5_flag_sincCoeffsTruncated bit(1) NOT NULL,
  base_CircularApertureFlux_6_0_flux double DEFAULT NULL,
  base_CircularApertureFlux_6_0_fluxSigma double DEFAULT NULL,
  base_CircularApertureFlux_6_0_flag bit(1) NOT NULL,
  base_CircularApertureFlux_6_0_flag_apertureTruncated bit(1) NOT NULL,
  base_CircularApertureFlux_6_0_flag_sincCoeffsTruncated bit(1) NOT NULL,
  base_CircularApertureFlux_9_0_flux double DEFAULT NULL,
  base_CircularApertureFlux_9_0_fluxSigma double DEFAULT NULL,
  base_CircularApertureFlux_9_0_flag bit(1) NOT NULL,
  base_CircularApertureFlux_9_0_flag_apertureTruncated bit(1) NOT NULL,
  base_CircularApertureFlux_9_0_flag_sincCoeffsTruncated bit(1) NOT NULL,
  base_CircularApertureFlux_12_0_flux double DEFAULT NULL,
  base_CircularApertureFlux_12_0_fluxSigma double DEFAULT NULL,
  base_CircularApertureFlux_12_0_flag bit(1) NOT NULL,
  base_CircularApertureFlux_12_0_flag_apertureTruncated bit(1) NOT NULL,
  base_CircularApertureFlux_12_0_flag_sincCoeffsTruncated bit(1) NOT NULL,
  base_CircularApertureFlux_17_0_flux double DEFAULT NULL,
  base_CircularApertureFlux_17_0_fluxSigma double DEFAULT NULL,
  base_CircularApertureFlux_17_0_flag bit(1) NOT NULL,
  base_CircularApertureFlux_17_0_flag_apertureTruncated bit(1) NOT NULL,
  base_CircularApertureFlux_25_0_flux double DEFAULT NULL,
  base_CircularApertureFlux_25_0_fluxSigma double DEFAULT NULL,
  base_CircularApertureFlux_25_0_flag bit(1) NOT NULL,
  base_CircularApertureFlux_25_0_flag_apertureTruncated bit(1) NOT NULL,
  base_CircularApertureFlux_35_0_flux double DEFAULT NULL,
  base_CircularApertureFlux_35_0_fluxSigma double DEFAULT NULL,
  base_CircularApertureFlux_35_0_flag bit(1) NOT NULL,
  base_CircularApertureFlux_35_0_flag_apertureTruncated bit(1) NOT NULL,
  base_CircularApertureFlux_50_0_flux double DEFAULT NULL,
  base_CircularApertureFlux_50_0_fluxSigma double DEFAULT NULL,
  base_CircularApertureFlux_50_0_flag bit(1) NOT NULL,
  base_CircularApertureFlux_50_0_flag_apertureTruncated bit(1) NOT NULL,
  base_CircularApertureFlux_70_0_flux double DEFAULT NULL,
  base_CircularApertureFlux_70_0_fluxSigma double DEFAULT NULL,
  base_CircularApertureFlux_70_0_flag bit(1) NOT NULL,
  base_CircularApertureFlux_70_0_flag_apertureTruncated bit(1) NOT NULL,
  base_GaussianFlux_flux double DEFAULT NULL,
  base_GaussianFlux_fluxSigma double DEFAULT NULL,
  base_GaussianFlux_flag bit(1) NOT NULL,
  base_PsfFlux_flux double DEFAULT NULL,
  base_PsfFlux_fluxSigma double DEFAULT NULL,
  base_PsfFlux_flag bit(1) NOT NULL,
  base_PsfFlux_flag_noGoodPixels bit(1) NOT NULL,
  base_PsfFlux_flag_edge bit(1) NOT NULL,
  base_PsfFlux_apCorr double DEFAULT NULL,
  base_PsfFlux_apCorrSigma double DEFAULT NULL,
  base_PsfFlux_flag_apCorr bit(1) NOT NULL,
  base_GaussianFlux_apCorr double DEFAULT NULL,
  base_GaussianFlux_apCorrSigma double DEFAULT NULL,
  base_GaussianFlux_flag_apCorr bit(1) NOT NULL,
  slot_Centroid_x double DEFAULT NULL,
  slot_Centroid_y double DEFAULT NULL,
  base_CircularApertureFlux_flag_badCentroid bit(1) NOT NULL,
  base_GaussianFlux_flag_badCentroid bit(1) NOT NULL,
  base_PsfFlux_flag_badCentroid bit(1) NOT NULL,
  slot_Centroid_flag bit(1) NOT NULL,
  slot_Shape_xx double DEFAULT NULL,
  slot_Shape_yy double DEFAULT NULL,
  slot_Shape_xy double DEFAULT NULL,
  base_GaussianFlux_flag_badShape bit(1) NOT NULL,
  slot_Shape_flag bit(1) NOT NULL,
  chunkId int(11) NOT NULL,
  subChunkId int(11) NOT NULL,
  KEY(objectId),
  KEY(parentObjectId),
  KEY(subChunkId)
) ENGINE=MyISAM DEFAULT CHARSET=latin1
