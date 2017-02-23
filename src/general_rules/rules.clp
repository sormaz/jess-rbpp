(defrule SelectHMProcessStatus
    ?relation <- (FeatureRelation (Feature ?jh)(status MBMBAssigned) )
    ?pc <- (ProcessCapability (name ?processName)(OBJECT ?pcObj))
    ?jh <- (Hole (mayBeMachinedBy ?mbmb&:(and (<> (call ?mbmb size) 0) (call ?mbmb contains ?processName)))
        (processes ?processList)(OBJECT ?o)
        (featureName ?fName)
        (radius ?rad) (bottomDist ?bDist)
        (mfgPartModelName ?part&:(neq ?part nil))
        )
    =>
    (removeProcessFromMbmb ?o ?processName)
    (bind ?nf (createHoleFact ?jh ?processName))
    (bind ?returnValue (ProcessCapabilityStatus ?jh ?pc  ?nf ))
    (assert (ProcessFeatureRelation (oldFeature ?jh)(newFeature ?nf)(processCap ?pc)(status ?returnValue) ))
    )

;(defrule SelectHMProcessNoMatch
;       ; ?pc <- (ProcessCapability (name ?processName)(OBJECT ?pcObj))

;	?jh <- (Hole (mayBeMachinedBy ?mbmb)
;  (processes ?processList)(OBJECT ?o) (featureName ?fName) (mfgPartModelName ?part))
;?nf <- (Hole (OBJECT ?nfObj) )
; ?do <- (ProcessFeatureRelation (oldFeature ?jh)(newFeature ?nf)(processCap ?pc)(status -1) )
;=>
;       (modify ?do (status 5))
;       (printout t "no match for " ?fName " for process " ?processName "and staus is " (fact-slot-value ?do status)crlf crlf)
;       (retract ?nf)
;)


(defrule   SelectHMProcessCompleteMatch
    ?jh <- (Hole (mayBeMachinedBy ?mbmb)(processes ?processList)(OBJECT ?o) (featureName ?fName) (mfgPartModelName ?part))
    ?pc <- (ProcessCapability (name ?processName)(OBJECT ?pcObj))
    ?nf <- (Hole (OBJECT ?nfObj) )
    ?do <- (ProcessFeatureRelation (oldFeature ?jh)(newFeature ?nf)(processCap ?pc)(status 1) )
    =>
    (modify ?do (status 5))
    (bind ?processInstance (createProcessInstance ?jh ?processName))
    (addProcessToPart ?part ?processInstance)
    
    (retract ?nf)
    )



(defrule   SelectHMProcessPartialMatch
    
    ?jh <- (Hole (mayBeMachinedBy ?mbmb)(processes ?processList)(OBJECT ?o) (featureName ?fName) (mfgPartModelName ?part))
    ?pc <- (ProcessCapability (name ?processName)(OBJECT ?pcObj) (nextProcessList ?pList))
    ?nf <- (Hole (mayBeMachinedBy ?newMbMb) (OBJECT ?nfObj) )
    ?do <- (ProcessFeatureRelation (oldFeature ?jh)(newFeature ?nf)(processCap ?pc)(status ?s&:(or (= 0 ?s ) (= -1 ?s)) ))
    =>
    (modify ?do (status 5))
    (bind ?processInstance (createProcessInstance ?jh ?processName) )
    (addProcessToPart ?part ?processInstance)
    (addNextFeatureToProcess ?processInstance ?nf)
    (modify ?nf (mayBeMachinedBy (new java.util.ArrayList ?pList)) (mfgPartModelName ?part) )
    (if (= (call ?pList size) 0) then
        (assert (FeatureRelation (Feature ?nf)(status Deadend) ))
        ; remove temporary color
     ;   (modify ?nf (color (new java.awt.Color 0 0 0) ) )
        else
        (assert (FeatureRelation (Feature ?nf)(status MBMBAssigned) ))
        )
    )


(defrule AssignCoreMaking
    ?jh <- (Hole (mayBeMachinedBy ?process&:(eq (call ?process toArray) (create$ )))
        (processes ?listOfProcesses&:(eq (call ?listOfProcesses toArray) (create$ )))
        (OBJECT ?o)(mfgPartModelName ?part&:(neq ?part nil)) (castDiameter ?castDia&:(= ?castDia 0.0)))
    (not (FeatureRelation (Feature ?jh)))
    =>
    (addToMaybeMachinedBy ?o "edu.ohiou.mfgresearch.implanner.processes.TwistDrilling" )
    (addToMaybeMachinedBy ?o "edu.ohiou.mfgresearch.implanner.processes.EndDrilling" )
    (addToMaybeMachinedBy ?o "edu.ohiou.mfgresearch.implanner.processes.SpadeDrilling" )
    (assert (FeatureRelation (Feature ?jh)
            (status MBMBAssigned) ))
    
    )

(defrule AssignSpotDrilling
    ?jh <- (Hole (mayBeMachinedBy ?process&:(eq (call ?process size) 0) )
        (processes ?listOfProcesses&:(eq (call ?listOfProcesses size) 0) )
        (OBJECT ?value) (castDiameter ?castDia&:(= ?castDia 0.0))
        )
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
    ?jh <- (Hole (mayBeMachinedBy ?process&:(= (call ?process size) 0) )
        (castDiameter ?castDia&:(> ?castDia 0))
        (processes ?listOfProcesses&:(= (call ?listOfProcesses size) 0))
        (OBJECT ?featObj))
    (not (FeatureRelation (Feature ?jh)))
    =>
    (addToMaybeMachinedBy ?featObj "edu.ohiou.mfgresearch.implanner.processes.Boring" )
    (addToMaybeMachinedBy ?featObj "edu.ohiou.mfgresearch.implanner.processes.PrecisionBoring" )
    (addToMaybeMachinedBy ?featObj "edu.ohiou.mfgresearch.implanner.processes.Reaming" )
    
    (assert (FeatureRelation (Feature ?jh)
            (status MBMBAssigned) ))
    
    )

(defrule selectToolAndParameters
    ?process <- (Holemaking (OBJECT ?pObject) (featureName ?fName))
    ?feature <- (Hole (OBJECT ?fObject) (featureName ?fName) (radius ?radius))
    =>
    (call ?pObject setTool (new Tool (* 2.0 ?radius) 2.5 "diamond"))
    (call ?pObject setCuttingParameter (new CuttingParameter))
    )



