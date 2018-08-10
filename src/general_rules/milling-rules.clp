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