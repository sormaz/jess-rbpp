(defrule AssignCoreMaking
    ?jh <- (MfgFeature (mayBeMachinedBy ?process&:(eq (call ?process toArray) (create$ )))
        (processes ?listOfProcesses&:(eq (call ?listOfProcesses toArray) (create$ )))
        (OBJECT ?o&: (?o isHole))(mfgPartModelName ?part&:(neq ?part nil)))
    (test (= (?o getCastDiameter) 0.0))
    (not (FeatureRelation (Feature ?jh)))
    =>
    (addToMaybeMachinedBy ?o "edu.ohiou.mfgresearch.implanner.processes.TwistDrilling" )
    (addToMaybeMachinedBy ?o "edu.ohiou.mfgresearch.implanner.processes.EndDrilling" )
    (addToMaybeMachinedBy ?o "edu.ohiou.mfgresearch.implanner.processes.SpadeDrilling" )
    (assert (FeatureRelation (Feature ?jh)
            (status MBMBAssigned) ))
    
    )

(defrule AssignSpotDrilling
    ?jh <- (MfgFeature (mayBeMachinedBy ?process&:(eq (call ?process size) 0) )
        (processes ?listOfProcesses&:(eq (call ?listOfProcesses size) 0) )
        (OBJECT ?value&: (?value isHole)) (mfgPartModelName ?part&:(neq ?part nil))
        )
       (test (= (?value getCastDiameter) 0.0))
    (not (FeatureRelation (Feature ?jh)))
    ?pc <- (ProcessCapability (name ?name&:(eq ?name "edu.ohiou.mfgresearch.implanner.processes.SpotDrilling"))
        (OBJECT ?pcObj) )
    (test (neq (getFeatureToleranceValue ?value "truePosition") nil ))
    (test (neq (getProcessToleranceValue ?pcObj "truePosition" ) nil ))
    (test (< (getFeatureToleranceValue ?value "truePosition" )(getProcessToleranceValue ?pcObj "truePosition")))
    =>
    (addToMaybeMachinedBy ?value "edu.ohiou.mfgresearch.implanner.processes.SpotDrilling" )
    (assert (FeatureRelation (Feature ?jh)
            (status MBMBAssigned) ))
    )


(defrule AssignHoleImproving
    ?jh <- (MfgFeature (mayBeMachinedBy ?process&:(= (call ?process size) 0) )
        (processes ?listOfProcesses&:(= (call ?listOfProcesses size) 0))
        (OBJECT ?featObj&:(?featObj isHole)))
        (test (> (?featObj getCastDiameter) 0.0))
    (not (FeatureRelation (Feature ?jh)))
    =>
    (addToMaybeMachinedBy ?featObj "edu.ohiou.mfgresearch.implanner.processes.Boring" )
    (addToMaybeMachinedBy ?featObj "edu.ohiou.mfgresearch.implanner.processes.PrecisionBoring" )
    (addToMaybeMachinedBy ?featObj "edu.ohiou.mfgresearch.implanner.processes.Reaming" )
    
    (assert (FeatureRelation (Feature ?jh)
            (status MBMBAssigned) ))
    
    )
