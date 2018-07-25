(defrule AssignRoughMilling
    ?jh <- (MfgFeature (mayBeMachinedBy ?process&:(eq (call ?process toArray) (create$ )))
        (processes ?listOfProcesses&:(eq (call ?listOfProcesses toArray) (create$ )))
        (OBJECT ?o&:( not (?o isHole)))(mfgPartModelName ?part&:(neq ?part nil)) )
    (not (FeatureRelation (Feature ?jh)))
    =>
    (addToMaybeMachinedBy ?o "edu.ohiou.mfgresearch.implanner.processes.EndMillingSlottingRough" )
    (addToMaybeMachinedBy ?o "edu.ohiou.mfgresearch.implanner.processes.SideMillingRough" )
    (assert (FeatureRelation (Feature ?jh)
            (status MBMBAssigned) ))
    
    )