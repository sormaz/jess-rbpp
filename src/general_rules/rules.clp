(defrule SelectHMProcessStatus
    ?relation <- (FeatureRelation (Feature ?jh)(status MBMBAssigned) )
    ?pc <- (ProcessCapability (name ?processName)(OBJECT ?pcObj))
    ?jh <- (MfgFeature (mayBeMachinedBy ?mbmb&:(and (<> (call ?mbmb size) 0) (call ?mbmb contains ?processName)))
        (processes ?processList)(OBJECT ?o)
        (featureName ?fName)
   ;     (radius ?rad) (bottomDist ?bDist)
        (mfgPartModelName ?part&:(neq ?part nil))
        )
    =>
    (removeProcessFromMbmb ?o ?processName)
    (bind ?nf (createFeatureFact ?jh ?processName))
    (bind ?returnValue (ProcessCapabilityStatus ?jh ?pc  ?nf ))
    (assert (ProcessFeatureRelation (oldFeature ?jh)(newFeature ?nf)(processCap ?pc)(status ?returnValue) ))
    )

;(defrule SelectHMProcessNoMatch
;       ; ?pc <- (ProcessCapability (name ?processName)(OBJECT ?pcObj))

;	?jh <- (MfgFeature (mayBeMachinedBy ?mbmb)
;  (processes ?processList)(OBJECT ?o) (featureName ?fName) (mfgPartModelName ?part))
;?nf <- (MfgFeature (OBJECT ?nfObj) )
; ?do <- (ProcessFeatureRelation (oldFeature ?jh)(newFeature ?nf)(processCap ?pc)(status -1) )
;=>
;       (modify ?do (status 5))
;       (printout t "no match for " ?fName " for process " ?processName "and staus is " (fact-slot-value ?do status)crlf crlf)
;       (retract ?nf)
;)


(defrule   SelectHMProcessCompleteMatch
    ?jh <- (MfgFeature (mayBeMachinedBy ?mbmb)(processes ?processList)(OBJECT ?o) (featureName ?fName) (mfgPartModelName ?part))
    ?pc <- (ProcessCapability (name ?processName)(OBJECT ?pcObj))
    ?nf <- (MfgFeature (OBJECT ?nfObj) )
    ?do <- (ProcessFeatureRelation (oldFeature ?jh)(newFeature ?nf)(processCap ?pc)(status 1) )
    =>
    (modify ?do (status 5))
    (bind ?processInstance (createProcessInstance ?jh ?processName))
    (addProcessToPart ?part ?processInstance)
    
    (retract ?nf)
    )



(defrule   SelectHMProcessPartialMatch
    
    ?jh <- (MfgFeature (mayBeMachinedBy ?mbmb)(processes ?processList)(OBJECT ?o) (featureName ?fName) (mfgPartModelName ?part))
    ?pc <- (ProcessCapability (name ?processName)(OBJECT ?pcObj) (nextProcessList ?pList))
    ?nf <- (MfgFeature (mayBeMachinedBy ?newMbMb) (OBJECT ?nfObj) )
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





