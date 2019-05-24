(import edu.ohiou.mfgresearch.implanner.features.MfgFeature)

(printout t "in set Tolerances for nist" crlf)
(bind ?f (MfgFeature.findFeatureForName "SIMPLE HOLE(25)"))
(?f setTolerance "positiveTolerance" 0.4)
