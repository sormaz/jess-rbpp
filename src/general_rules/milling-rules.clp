(require defclasses)
(require relationTemplate)

(defrule AssignSlotRoughMilling
    ?mf <- (MfgFeature (mayBeMachinedBy ?process&:(eq (call ?process toArray) (create$ )))
        (processes ?listOfProcesses&:(eq (call ?listOfProcesses toArray) (create$ )))
        (OBJECT ?o&: (?o isSlot)) (mfgPartModelName ?part&:(neq ?part nil)) )
    (not (FeatureRelation (Feature ?mf)))
    =>
    (addToMaybeMachinedBy ?o "edu.ohiou.mfgresearch.implanner.processes.EndMillingSlottingRough" )
    (addToMaybeMachinedBy ?o "edu.ohiou.mfgresearch.implanner.processes.SideMillingRough" )
    (assert (FeatureRelation (Feature ?mf)
            (status MBMBAssigned) ))
    )
    
    ; add rules for:
    ; 1. Slab - use FaceMillingRough
    ; 2. closed pocket or closed slot - use PlungeMilling
    ; 3. Pocket use EndMillingRough

(defrule AssignSlabRoughMilling
    ?mf <- (MfgFeature (mayBeMachinedBy ?process&:(eq (call ?process toArray) (create$ )))
        (processes ?listOfProcesses&:(eq (call ?listOfProcesses toArray) (create$ )))
        (OBJECT ?o&: (?o isSlab)) (mfgPartModelName ?part&:(neq ?part nil)) )
    (not (FeatureRelation (Feature ?mf)))
    =>
    (addToMaybeMachinedBy ?o "edu.ohiou.mfgresearch.implanner.processes.FaceMillingRough" )
    (addToMaybeMachinedBy ?o "edu.ohiou.mfgresearch.implanner.processes.SlabMillingRough" )
    (assert (FeatureRelation (Feature ?mf)
            (status MBMBAssigned) ))
    )

(defrule AssignPlungeMilling
    ?mf <- (MfgFeature (mayBeMachinedBy ?process&:(eq (call ?process toArray) (create$ )))
        (processes ?listOfProcesses&:(eq (call ?listOfProcesses toArray) (create$ )))
        (OBJECT ?o&: (and (not (?o isHole))(?o isClosed))) (mfgPartModelName ?part&:(neq ?part nil)) )
    (not (FeatureRelation (Feature ?mf)))
    =>
    (addToMaybeMachinedBy ?o "edu.ohiou.mfgresearch.implanner.processes.PlungeMilling" )
    (assert (FeatureRelation (Feature ?mf)
            (status MBMBAssigned) ))
    )

(defrule AssignOpenPocketMilling
    ?mf <- (MfgFeature (mayBeMachinedBy ?process&:(eq (call ?process toArray) (create$ )))
        (processes ?listOfProcesses&:(eq (call ?listOfProcesses toArray) (create$ )))
        (OBJECT ?o&: (and (?o isPocket) (not(?o isSlab)) (not(?o isClosed)))) (mfgPartModelName ?part&:(neq ?part nil)) )
    (not (FeatureRelation (Feature ?mf)))
    =>
    (addToMaybeMachinedBy ?o "edu.ohiou.mfgresearch.implanner.processes.EndMillingPeripheralRough" )
    (assert (FeatureRelation (Feature ?mf)
            (status MBMBAssigned) ))
    )