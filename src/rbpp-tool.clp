;(in-package :ops)

(require rbpp-init)
(import edu.ohiou.mfgresearch.labimp.gtk3d.*)

(defrule tool-rule-face-milling
	(feature (name ?f1) (dim2 ?d1))
	?op <- (operation (feature ?f1) (process face-milling) (machine ?m1) (tool nil))
	(tool (name ?n1) (for-process face-milling) (diameter ?d&:(>= ?d ?d1) ))
	=>
	(modify ?op (tool ?n1) )
)

(defrule tool-rulel-face/slab-milling
	(feature (name ?f1) (dim2 ?d1))
	(operation (feature ?f1) (process ?p1 & face-milling | slab-milling) (machine ?m1) (tool ?n2 &~nil) )
	(tool (name ?n1 & ~?n2) (for-process ?p1) (diameter ?diameter&:(<= ?diameter ?d1) ) )
	(operation (feature ?f1) (process ?p1) (machine ?m1) (tool ?n1) )
	=>
	(assert (operation (feature ?f1) (process ?p1) (machine ?m1) (tool ?n1) ) )
)

(defrule tool-rule-drilling
	?op <- (operation (feature ?f1) (process drilling) (machine ?m1) (tool nil) )
	(feature (name ?f1) (dim1 ?d1) )
	
     (tool (name ?n1) (for-process drilling) (diameter ?d2&:(call Gtk epsilonEquals ?d1 ?d2)) )
     (machine (name ?m1) (tool-list $?tools&: (member$ ?n1 $?tools)))
  ;  (machine (name ?m1) (tool-list ? ?n1 ?))
	=>
	(modify ?op (tool ?n1) )
)

(defrule tool-rule-boring/drilling/reaming
	(feature (name ?f1) (dim1 ?d1) )
	(operation (feature ?f1) (process ?p1 & boring | drilling | reaming) (machine ?m1) (tool ?n2 & ~nil) )
    (tool (name ?n1 & ~?n2) (for-process ?p1) (diameter ?d1) )
    (machine (name ?m1) (tool-list $?tools&: (member$ ?n1 $?tools)))
	(not (operation (feature ?f1) (process ?p1) (machine ?m1) (tool ?n1) ) )
	=>
	(assert (operation (feature ?f1) (process ?p1) (machine ?m1) (tool ?n1) ) ) 
)
    
    
;Tool Rule for chamfer
(defrule tool-rule-chamfer-end-milling
	(feature (name ?f1) (dim1 ?d1)(dim3 ?d2) )
	?op <- (operation (feature ?f1) (process chamfer-end-milling) (machine ?m1) (tool nil) )
	(tool (name ?n1) (for-process chamfer-end-milling) (chamfer-angle ?theta&:(= ?theta ?d2))(chamfer-lenght ?length&:(> ?length ?d1) ) )
    (machine (name ?m1) (tool-list $?tools&: (member$ ?n1 $?tools)))
	=>
	(modify ?op (tool ?n1) )
)
;****************************
    
(defrule tool-rule1-end-milling-peripheral
	(feature (name ?f1) (dim2 ?d1) )
	?op <- (operation (feature ?f1) (process end-milling-peripheral) (machine ?m1) (tool nil) )
	(tool (name ?n1) (for-process end-milling-peripheral) (length ?length&:(> ?length ?d1) ) )
    (machine (name ?m1) (tool-list $?tools&: (member$ ?n1 $?tools)))
	=>
	(modify ?op (tool ?n1) )
)

(defrule tool-rule2-end-milling-peripheral-alternate
	(feature (name ?f1) (dim2 ?d1) )
	(operation (feature ?f1) (process end-milling-peripheral) (machine ?m1) (tool ?n2 & ~nil ) )
   	(tool (name ?n1 & ~?n2) (for-process ?p1 & end-milling-periphera1) (length ?length &:(> ?length ?d1) ))
    (machine (name ?m1) (tool-list $?tools&: (member$ ?n1 $?tools)))
	(operation (feature ?f1) (process ?p1) (machine ?m1) (tool ?n1) )
	=>
	(assert (operation (feature ?f1) (process ?p1) (machine ?m1) (tool ?n1) ) )
)


(defrule tool-rule1-side-milling
	(feature (name ?f1) (dim2 ?d1) )
	?op <- (operation (feature ?f1) (process side-milling) (machine ?m1) (tool nil) )
	(tool (name ?n1) (for-process side-milling) (width ?d1) )
    (machine (name ?m1) (tool-list $?tools&: (member$ ?n1 $?tools)))
	=>
	(modify ?op (tool ?n1) )
)

(defrule tool-rule2-side-milling-alternate
	(feature (name ?f1) (dim2 ?d1) )
	(operation (feature ?f1) (process side-milling) (machine ?m1) (tool ?n2 & ~nil) )
	(tool (name ?n1 & ~?n2) (for-process side-milling) (width ?d1) )
    (machine (name ?m1) (tool-list $?tools&: (member$ ?n1 $?tools)))
	(not (operation (feature ?f1) (process side-milling) (machine ?m1) (tool ?n1) ) )
	=>
	(assert (operation (feature ?f1) (process side-milling) (machine ?m1) (tool ?n1) ) )
)

(defrule tool-rule1-end-milling-slotting
	(feature (name ?f1) (dim2 ?d1) )
	?op <- (operation (feature ?f1) (process end-milling-slotting) (machine ?m1) (tool nil) )
   	(tool (name ?n1) (for-process end-milling-slotting) (diameter ?d1) )
    (machine (name ?m1) (tool-list $?tools&: (member$ ?n1 $?tools)))
	=>
	(modify ?op (tool ?n1) )
)

(defrule tool-rule2-end-milling-slotting-alternate
	(feature (name ?f1) (dim2 ?d1) )
	(operation (feature ?f1) (process ?p1 & end-milling-slotting) (machine ?m1) (tool ?n2 &~nil) )
    (tool (name ?n1 & ~?n2) (for-process ?p1) (diameter ?d1) )
    (machine (name ?m1) (tool-list $?tools&: (member$ ?n1 $?tools)))
	(not (operation (feature ?f1) (process ?p1) (machine ?m1) (tool ?n1) ) )
	=>
	(assert (operation (feature ?f1) (process ?p1) (machine ?m1) (tool ?n1) ) )
)


(defrule tool-rule2-slab-milling
	(feature (name ?f1) (dim2 ?d1) )
	?op <- (operation (feature ?f1) (process slab-milling) (machine ?m1) (tool nil) )
	(tool (name ?n1) (for-process slab-milling) (diameter ?diameter&:(>= ?diameter ?d1) ) )
	=>
	(modify ?op (tool ?n1) )
)




(defrule tool-rule-boring
	(feature (name ?f1) (dim1 ?d1) )
	?op <- (operation (feature ?f1) (process boring) (machine ?m1) (tool nil) )
	(tool (name ?n1) (for-process boring) (diameter ?d1) )
	=>
	(modify ?op (tool ?n1) )
)

(defrule tool-rule-reaming
	(feature (name ?f1) (dim1 ?d1) )
	?op <- (operation (feature ?f1) (process reaming) (machine ?m1) (tool nil) )
	(tool (name ?n1) (for-process reaming) (diameter ?d1) )
	=>
	(modify ?op (tool ?n1) )
)


(defrule tool-rule-material-HSS
	(feature (name ?f1) )
	(operation (feature ?f1) (process ?p1) (machine ?m1) (tool ?n1) )
	(part (material carbon-steel) )
	?t <- (tool (name ?n1) (for-process ?p1) (material nil) )
	=>
	(modify ?t (material hss) )
)

(defrule tool-rule10
	(feature (name ?f1) (normal ?n1) )
	(feature (name ?f2) (normal ?n2) (type topface) )
	?op <- (operation (feature ?f1) (process ?p1) (machine ?m1) (resting-face nil) ) 
	(opposite-direction (first ?n1) (second ?n2) )
	(machine (name ?n1) (toolhead universal | vertical) )
	=>
	(modify ?op (resting-face ?f2) )
)




;(defrule tool-rul-no-tool-drilling
;	(feature (name ?f1) (dim1 ?d1) )
	;?op <- (operation (feature ?f1) (process drilling) (machine ?m1) (tool nil) )
	;(not (tool (name ?n1) (for-process drilling) (diameter ?d&:(= ?d ?d1) )))
    
;	=>
;	(modify ?op (tool tool-not-available) )
   ; (assert (tool (name t222)(for-process ?p) (diameter ?d1)))
;)

(defrule tool-rul-no-tool-slot-end-milling
	(feature (name ?f1) (dim2 ?d1) )
	?op <- (operation (feature ?f1) (process end-milling-slotting) (machine ?m1) (tool nil) )
	(not(tool (name ?n1) (for-process end-milling-slotting) (diameter ?d1) ))
	=>
	(modify ?op (tool tool-not-available) )
)
    
    
(defrule tool-rule-slot-side-milling
	(feature (name ?f1) (dim2 ?d1) )
	?op <- (operation (feature ?f1) (process side-milling) (machine ?m1) (tool nil) )
	(not(tool (name ?n1) (for-process side-milling) (width ?d1) ))
	=>
	(modify ?op (tool tool-not-available) )
    
    
) (defrule tool-no-tool-pocket
	(feature (name ?f1) (dim2 ?d1) )
	?op <- (operation (feature ?f1) (process end-milling-peripheral) (machine ?m1) (tool nil) )
	(not(tool (name ?n1) (for-process end-milling-peripheral) (length ?length&:(> ?length ?d1) ) ))
	=>
	(modify ?op (tool tool-not-available) )
)   

/*
comment this rule not to create extra tools
    
(defrule tool-warning-drilling
	(feature (name ?f1) (dim1 ?d1) )
	?op <- (operation (feature ?f1) (process drilling) (machine ?m1) (tool nil) )
	(not (tool (name ?n1) (for-process drilling) (diameter ?d&:(= ?d ?d1) )))
    
	=>
	(assert (tool
    (name T470)
    (material Hss)
    (for-process drilling)
    (diameter ?d1)
    (length 5.0)
    (life-cycle 180)
	(cost 30.000))
)
    (assert (cutting-condition 	
    	(process drilling)
		(part-material CarbonSteel)
		(tool-material Hss)
		(tool-diameter ?d1)
		(speed 300)
		(feed 0.003)
        ))
    
    )
    
    
   */ 
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    