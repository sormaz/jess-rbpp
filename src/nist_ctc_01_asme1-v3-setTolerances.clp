(import edu.ohiou.mfgresearch.implanner.features.MfgFeature)

; this code is executed in savaXML button of Integration Panel

(printout t "in set Tolerances for nist" crlf)
(bind ?f (MfgFeature.findFeatureForName "SIMPLE HOLE(25)"))
(printout t "feature name is " (?f toString) crlf)
(?f setTolerance "positiveTolerance" 0.005)
(?f setTolerance "negativeTolerance" 0.01)
(bind ?f (MfgFeature.findFeatureForName "SIMPLE HOLE(26)"))
(?f setTolerance "positiveTolerance" 0.01)
(?f setTolerance "negativeTolerance" 0.005)

(bind ?f (MfgFeature.findFeatureForName "SIMPLE HOLE(17)"))
(?f setTolerance "positiveTolerance" 0.015)
(?f setTolerance "negativeTolerance" 0.015)
(bind ?f (MfgFeature.findFeatureForName "SIMPLE HOLE(18)"))
(?f setTolerance "positiveTolerance" 0.015)
(?f setTolerance "negativeTolerance" 0.015)
(bind ?f (MfgFeature.findFeatureForName "SIMPLE HOLE(19)"))
(?f setTolerance "positiveTolerance" 0.015)
(?f setTolerance "negativeTolerance" 0.015)
(bind ?f (MfgFeature.findFeatureForName "SIMPLE HOLE(20)"))
(?f setTolerance "positiveTolerance" 0.015)
(?f setTolerance "negativeTolerance" 0.015)

(bind ?f (MfgFeature.findFeatureForName "SIMPLE HOLE(11)"))
(?f setTolerance "positiveTolerance" 0.0)
(?f setTolerance "negativeTolerance" 0.02)
(bind ?f (MfgFeature.findFeatureForName "SIMPLE HOLE(12)"))
(?f setTolerance "positiveTolerance" 0.02)
(?f setTolerance "negativeTolerance" 0.02)
(bind ?f (MfgFeature.findFeatureForName "SIMPLE HOLE(13)"))
(?f setTolerance "positiveTolerance" 0.02)
(?f setTolerance "negativeTolerance" 0.0)
(bind ?f (MfgFeature.findFeatureForName "SIMPLE HOLE(14)"))
(?f setTolerance "positiveTolerance" 0.02)
(?f setTolerance "negativeTolerance" 0.02)

(bind ?f (MfgFeature.findFeatureForName "SIMPLE HOLE(14)"))
(?f setTolerance "perpendicularity" 0.15)

(bind ?f (MfgFeature.findFeatureForName "RECTANGULAR_POCKET(3)"))
(?f setTolerance "positiveTolerance" 0.002)

(bind ?f (MfgFeature.findFeatureForName "BLEND(31)"))
(?f setTolerance "profile" 0.125)
(bind ?f (MfgFeature.findFeatureForName "RECTANGULAR_POCKET(5)"))
(?f setTolerance "profile" 0.125)

(bind ?f (MfgFeature.findFeatureForName "RECTANGULAR_POCKET(34)"))
(?f setTolerance "sizeTolerance"1)
(bind ?f (MfgFeature.findFeatureForName "RECTANGULAR_POCKET(35)"))
(?f setTolerance "sizeTolerance"1)

(bind ?f (MfgFeature.findFeatureForName "RECTANGULAR_POCKET(3)"))
(?f setTolerance "flatness" 0.02)

