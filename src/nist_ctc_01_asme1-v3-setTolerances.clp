(import edu.ohiou.mfgresearch.implanner.features.MfgFeature)

; this code is executed in savaXML button of Integration Panel

(printout t "in set Tolerances for nist" crlf)
(bind ?f (MfgFeature.findFeatureForName "SIMPLE HOLE(25)"))
(printout t "feature name is " (?f toString) crlf)
(?f setTolerance "positiveToleranceSH25" 0.005)
(?f setTolerance "negativeToleranceSH25" 0.01)
(bind ?f (MfgFeature.findFeatureForName "SIMPLE HOLE(26)"))
(?f setTolerance "positiveToleranceSH26" 0.01)
(?f setTolerance "negativeToleranceSH26" 0.005)

(bind ?f (MfgFeature.findFeatureForName "SIMPLE HOLE(17)"))
(?f setTolerance "positiveToleranceSH17" 0.015)
(?f setTolerance "negativeToleranceSH17" 0.015)
(bind ?f (MfgFeature.findFeatureForName "SIMPLE HOLE(18)"))
(?f setTolerance "positiveToleranceSH18" 0.015)
(?f setTolerance "negativeToleranceSH18" 0.015)
(bind ?f (MfgFeature.findFeatureForName "SIMPLE HOLE(19)"))
(?f setTolerance "positiveToleranceSH19" 0.015)
(?f setTolerance "negativeToleranceSH19" 0.015)
(bind ?f (MfgFeature.findFeatureForName "SIMPLE HOLE(20)"))
(?f setTolerance "positiveToleranceSH20" 0.015)
(?f setTolerance "negativeToleranceSH20" 0.015)

(bind ?f (MfgFeature.findFeatureForName "SIMPLE HOLE(11)"))
(?f setTolerance "positiveToleranceSH11" 0.0)
(?f setTolerance "negativeToleranceSH11" 0.02)
(bind ?f (MfgFeature.findFeatureForName "SIMPLE HOLE(12)"))
(?f setTolerance "positiveToleranceSH12" 0.02)
(?f setTolerance "negativeToleranceSH12" 0.02)
(bind ?f (MfgFeature.findFeatureForName "SIMPLE HOLE(13)"))
(?f setTolerance "positiveToleranceSH13" 0.02)
(?f setTolerance "negativeToleranceSH13"0.0)
(bind ?f (MfgFeature.findFeatureForName "SIMPLE HOLE(14)"))
(?f setTolerance "positiveToleranceSH14" 0.02)
(?f setTolerance "negativeToleranceSH14" 0.02)

(bind ?f (MfgFeature.findFeatureForName "SIMPLE HOLE(14)"))
(?f setTolerance "perpendicularitySH14" 0.15)

(bind ?f (MfgFeature.findFeatureForName "RECTANGULAR_POCKET(3)"))
(?f setTolerance "positiveToleranceRP3" 0.002)

(bind ?f (MfgFeature.findFeatureForName "BLEND(31)"))
(?f setTolerance "profileb"0.125)
(bind ?f (MfgFeature.findFeatureForName "RECTANGULAR_POCKET(5)"))
(?f setTolerance "profileRP5" 0.125)

(bind ?f (MfgFeature.findFeatureForName "RECTANGULAR_POCKET(34)"))
(?f setTolerance "sizeToleranceRP34"1)
(bind ?f (MfgFeature.findFeatureForName "RECTANGULAR_POCKET(35)"))
(?f setTolerance "sizeToleranceRP35"1)

(bind ?f (MfgFeature.findFeatureForName "RECTANGULAR_POCKET(3)"))
(?f setTolerance "flatnessRP3" 0.02)

(bind ?f (MfgFeature.findFeatureForName "RECTANGULAR_POCKET(24)"))
(?f setTolerance "truePositionRP24"0.075)
(bind ?f (MfgFeature.findFeatureForName "RECTANGULAR_POCKET(16)"))
(?f setTolerance "truePositionRP16"0.075)