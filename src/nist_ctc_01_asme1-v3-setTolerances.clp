(import edu.ohiou.mfgresearch.implanner.features.MfgFeature)

; this code is executed in savaXML button of Integration Panel

(printout t "in set Tolerances for nist" crlf)
(bind ?f (MfgFeature.findFeatureForName "SIMPLE HOLE(25)"))
(printout t "feature name is " (?f toString) crlf)
(?f setTolerance "positiveTolerance" 0.4)
