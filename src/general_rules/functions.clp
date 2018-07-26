
(import edu.ohiou.mfgresearch.implanner.parts.*)

(deffunction ProcessCapabilityStatus (?FeatureFact ?ProcessFact ?newFeatureFact)
      (bind ?Feature (fact-slot-value ?FeatureFact OBJECT) )
      (bind ?Process (fact-slot-value ?ProcessFact OBJECT) )
      (bind ?newFeature (fact-slot-value ?newFeatureFact OBJECT) )
      (bind ?propTable (?Feature getTolerances))
      (bind ?hash (?propTable getToleranceHashTable) )
      (bind ?keySet (?hash keySet))
      (bind ?newFeatPropTable (?newFeature getTolerances) )
      (bind ?itr (?keySet iterator))
      (bind ?pcTable (?Process getPropTable ) )
      (bind ?pcHash (?pcTable getToleranceHashTable) )
      (bind ?actuallySatisfied 0)
      (bind ?LTDia (?pcTable get largestToolDiameter) )
      (bind ?STDia (?pcTable get "smallestToolDiameter"))
      (bind ?dia 0.0)
      (bind ?depth 0.0)
      
      ; verify for holes
      (if ((fact-slot-value ?FeatureFact OBJECT) isHole)
      then
      (if (and (numberp ?LTDia) (numberp ?STDia) )
      then
         (if  (and (<= (* 2.0 (?Feature getRadius)) ?LTDia)
                       (>= (* 2.0 (?Feature getRadius)) ?STDia)
              )
          then
             ; (printout t "radius value is do able" crlf )

          else
             (return -1)
         )
      )
      (bind ?dLmt (?pcTable get depthLimit ))
      
      (bind ?dia (* (?Feature getRadius) 2.0))
   (if (neq ?dLmt nil)
     then 
      (if (numberp ?dLmt)
      then
          (if (<= (?Feature getBottomDist)?dLmt  )
           then
              ;(printout t " " crlf )
           else
              (return -1)
           )
      else
          (if (<= (?Feature getBottomDist) (eval ?dLmt) )
          then
             ; (printout t " " crlf)
          else
              (return  -1)
          )
      )
                    (set ?dia  = (* (?Feature getRadius) 2.0))
              (set  ?depth = (?Feature getBottomDist ))
   )
   else ; it is not a hole
   )
   ; end verify for holes
      (bind ?toBeSatisfied (?hash size))

    (while (?itr hasNext)
       (bind ?string (?itr next))
       (bind ?capString (?pcTable get ?string))
	(printout t ?string ": cap string is number; "  (numberp ?capString ) ", value " ?capString crlf )

       (bind ?propString (?propTable get ?string) )
      
   ;(if (and (neq ?propString nil) (eq ?capString nil))
  ;  then
   ;(?newFeatPropTable put ?string (?propTable get ?string))
  ;  else
      (if (and (neq ?propString nil) (neq ?capString nil) )
       then
          (if (numberp ?capString)
           then
               (printout  t "************** prop value; "(call ?propTable toString) crlf )
                    
             ; test for pcTable if it is number, if not number, set local variables for expressions and evaluate expression using
              (if (>= ?propString ?capString )
               then
                        (printout t  "************ prop value; "(call ?propTable toString) crlf)
                  (bind ?actuallySatisfied (+ 1 ?actuallySatisfied))
               else
                  (?newFeatPropTable put ?string (?propTable get ?string))
               )
           else

              (if (>= (?propTable get ?string)(eval ?capString) )
               then
                   (bind ?actuallySatisfied (+ 1 ?actuallySatisfied))
               else
                   (?newFeatPropTable put ?string (?propTable get ?string))
              )
           )
        )
    ; )
  )
     
     (if (eq ?actuallySatisfied ?toBeSatisfied)
         then
         (return 1)
     )
 (if (eq ?actuallySatisfied 0)
	  then
          (return -1)
      )
   
  (if (> ?actuallySatisfied 0)
		 then
		    (return 0)
  )
  (return -1)
)
      

(deffunction removeProcessFromMbmb (?FeatureObject ?Process)
    (call ?FeatureObject removeMayBeMachinedBy ?Process)
)

(deffunction createHoleFact (?oldHole ?process)
     (bind ?className (call edu.ohiou.mfgresearch.implanner.processes.TokenizeName getLastToken ?process ".") )
     (bind ?fName  (fact-slot-value ?oldHole featureName) )
     (bind ?nFObj (new Hole (str-cat (sub-string 1 5 ?className) "-" ?fName ) 
                            (fact-slot-value ?oldHole radius )
                            (fact-slot-value ?oldHole axis)
                            (fact-slot-value ?oldHole axisPoint) 
                            (fact-slot-value ?oldHole bottom)
                  )
      )
     	(?nFObj setMfgPartModelName (fact-slot-value ?oldHole mfgPartModelName))

	  (?nFObj settColor (new java.awt.Color 0 0 0))
      (bind ?newHole (definstance Hole ?nFObj) )
      (return ?newHole)                       
  )
  
  (deffunction createFeatureFact (?oldHole ?process)
     (bind ?className (call edu.ohiou.mfgresearch.implanner.processes.TokenizeName getLastToken ?process ".") )
     (bind ?fName  (fact-slot-value ?oldHole featureName) )
     (bind ?nFObj ((fact-slot-value ?oldHole OBJECT) makeProcessFeature (str-cat (sub-string 1 5 ?className) "-" ?fName )                        
                  )
      )
     	(?nFObj setMfgPartModelName (fact-slot-value ?oldHole mfgPartModelName))

	  (?nFObj settColor (new java.awt.Color 0 0 0))
      (bind ?newHole (definstance MfgFeature ?nFObj) )
      (return ?newHole)                       
  )

(deffunction setColorInJess (?FeatureFact ?red ?green ?blue)
      (bind ?featureObject (fact-slot-value ?FeatureFact OBJECT) )
      (?featureObject settColor (new java.awt.Color ?red ?green ?blue))
)

(deffunction createProcessInstance (?HoleFact ?processName)
         (bind ?className (call edu.ohiou.mfgresearch.implanner.processes.TokenizeName getLastToken ?processName "." ) )
         (bind ?process (new ?processName (str-cat ?className "-" (fact-slot-value ?HoleFact featureName))
                                          (fact-slot-value ?HoleFact OBJECT)
                        )
                       
         )
		(?process settColor (new java.awt.Color 0 0 0))
        (bind ?processFact (definstance MfgProcess ?process) )         
        (return ?processFact)
)

(deffunction addProcessToPart (?part ?processFact) "Adds process to part"
        (call (call MfgPartModel findPartForName ?part) addProcess (fact-slot-value ?processFact OBJECT) )
)

(deffunction addNextFeatureToProcess (?processFact ?newFeatureFact)
        (call (fact-slot-value ?processFact OBJECT) setNextFeature (fact-slot-value ?newFeatureFact OBJECT) )
)

(deffunction addToMaybeMachinedBy (?featureObject ?processName)
         (call ?featureObject addMayBeMachinedBy ?processName)
)

(deffunction getFeatureToleranceValue (?FeaturePropertyTableObject ?toleranceString)
        (return (call (call ?FeaturePropertyTableObject getTolerances) get "truePosition") )
)

(deffunction getProcessToleranceValue (?ProcessPropertyTableObject ?toleranceString)
        (return (call (call ?ProcessPropertyTableObject getPropTable) get "truePosition") )
)






















