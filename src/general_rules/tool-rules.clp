(require defclasses)
(require relationTemplate)

(defrule selectToolAndParameters
    ?process <- (MfgProcess (OBJECT ?pObject) (featureName ?fName))
    ?feature <- (MfgFeature (OBJECT ?fObject) (featureName ?fName))
    =>
    (call ?pObject setTool (new Tool (* 2.0 3) 2.5 "Hss"))
    (call ?pObject setCuttingParameter)
    )
