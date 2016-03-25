;(in-package :ops)

(require rbpp-init)

 ;(external calculate-mach-time)
(import edu.ohiou.implanner.processes.*)

(deffunction  calculate-mach-time ($?factors)
    (bind ?length (nth$ 1 $?factors) )
	(bind ?diameter (nth$ 2 $?factors) )
	(bind ?speed (nth$ 3 $?factors) )
	(bind ?feed (nth$ 4 $?factors) ) 
	(bind ?efficiency (nth$ 5 $?factors) )
	(bind ?number-of-teeth (nth$ 6 $?factors) )
	(bind ?fwidth (nth$ 7 $?factors) )
	(bind ?twidth (nth$ 8 $?factors) )
    (printout t "ans is" ?length ?diameter ?speed ?feed ?efficiency ?number-of-teeth ?fwidth ?twidth crlf)
	
	(if (eq nil ?number-of-teeth) then
		(bind ?number-of-teeth 1) )
	
	(if (or (eq nil ?fwidth)
		(eq nil ?twidth) ) then 
	    (bind ?number-of-passes 1) else
	    (bind ?number-of-passes ( / ?fwidth ?twidth) ) )
	
	(if (<> ( - ?number-of-passes
				(integer ?number-of-passes)
	                   0)
        	) then 
	        (bind ?number-of-passes
	        	(+ 1 (integer ?number-of-passes) ) ))
	( / (* (+ ?length 0.25)
	        			?diameter
	                    (pi)
	                    ?number-of-passes)
				(* 12
	            	?speed
	                ?efficiency
	                ?feed
	                ?number-of-teeth)
            )
	
)

(defrule calc-mach-time-drilling
	 (part (material ?mat) )
	 ?op <- (operation (feature ?f1) (machine ?m1) (tool ?t1) (process drilling) (op-time nil) )
	 (machine (name ?m1) (speed-efficiency ?eff) )
	 (feature (name ?f1) (dim1 ?diam) (dim2 ?length) )
	 (tool (name ?t1) (material ?tmat) (diameter ?tdia) )
	 (cutting-condition (process drilling) (part-material ?mat) (tool-material ?tmat) (tool-diameter ?tdia) (speed ?speed) (feed ?feed) )
	 =>
	 (modify ?op (op-time (calculate-mach-time (create$ ?length ?tdia ?speed ?feed ?eff nil nil) ) ) )
)

(defrule calc-mach-time-boring
	 (part (material ?mat) )
	 ?op <- (operation (feature ?f1) (machine ?m1) (tool ?t1) (process boring) (op-time nil) )
	 (machine (name ?m1) (speed-efficiency ?eff) )
	 (feature (name ?f1) (dim1 ?diam) (dim2 ?length) ) 
	 (tool (name ?t1) (material ?tmat) (diameter ?tdia) )
	 (cutting-condition (process boring) (part-material ?mat) (tool-material ?tmat) (speed ?speed) (feed ?feed) )
	 =>
	 (modify ?op (op-time (calculate-mach-time (create$ ?length ?tdia ?speed ?feed ?eff nil nil) ) ) )
)

(defrule calc-mach-time-end-milling-slotting-hole
	(part (material ?mat) )
	?op <- (operation (feature ?f1) (machine ?m1) (tool ?t1) (process end-milling-slotting) (op-time nil) )
	(machine (name ?m1) (speed-efficiency ?eff) )
	(feature (name ?f1) (dim1 ?diam) (dim2 ?length) )
    (tool (name ?t1) (material ?mat) (diameter ?tdia) )
	(cutting-condition (process end-milling-slotting) (part-material ?mat) (tool-material ?tmat) 
    	(tool-diameter ?tdia) (speed ?speed) (feed ?feed) )
	=>
	(modify ?op (op-time (calculate-mach-time (create$ ?length ?tdia ?speed ?feed ?eff nil nil) ) ) )
)

(defrule calc-mach-time-reaming
	?p <- (part (material ?mat) )
	?op <- (operation (feature ?f1) (machine ?m1) (tool ?t1) (process reaming) (op-time nil) )
	(machine (name ?m1) (speed-efficiency ?eff) ) 
	(feature (name ?f1) (dim1 ?diam) (dim2 ?length) ) 
	(tool (name ?t1) (material ?tmat) (diameter ?tdia) ) 
	(cutting-condition (process reaming) (part-material ?mat) (tool-material ?tmat) (tool-diameter <=?dia>=?tdia) (speed ?speed) (feed ?feed) )
	=>
	(modify ?op (op-time (calculate-mach-time (create$ ?length ?tdia ?speed ?feed ?eff ?p nil nil) ) ) )
)

(defrule calc-mach-time-face-milling
	(part (material ?mat) )
	?op <- (operation (feature ?f1) (machine ?m1) (tool ?t1) (process face-milling) (op-time nil) )
	(machine (name ?m1) (speed-efficiency ?eff) )
	(feature (name ?f1) (dim1 ?length) )
	(tool (name ?t1) (material ?tmat) (diameter ?tdia) (number-of-teeth ?nteeth) )
	(cutting-condition (process face-milling) (part-material ?mat) (tool-material ?tmat) (speed ?speed) (feed ?feed) )
	=>
	(modify ?op (op-time (calculate-mach-time (create$ ?length ?tdia ?speed ?feed ?eff ?nteeth nil nil) ) ) )
)

(defrule calc-mach-time-side-milling
	(part (material ?mat) )
	?op <- (operation (feature ?f1) (machine ?m1) (tool ?t1) (process side-milling) (op-time nil) )
	(machine (name ?m1) (speed-efficiency ?eff) )
	(feature (name ?f1) (dim1 ?length) (dim2 ?fwidth) ) 
	(tool (name ?t1) (material ?tmat) (diameter ?tdia) (number-of-teeth ?nteeth) (width ?twidth) )
	(cutting-condition (process side-milling) (part-material ?mat) (tool-material ?tmat) (speed ?speed) (feed ?feed) )
	=>
	(bind ?nopass (/ ?fwidth ?twidth) )
;	(write (crlf) (feature ?fwidth) (tool ?twidth) )
;	(write (crlf) ( + 1 (/ ?width ?twidth) ))
;	(write (crlf) (calc ?length ?tdia ?speed ?feed) 
;		(crlf) ?eff ?nteeth ?nopass)
	(modify ?op (op-time (calculate-mach-time (create$ ?length ?tdia ?speed ?feed ?eff ?nteeth ?fwidth ?twidth ) ) ) )
)

(defrule calc-mach-time-slab-milling
	(part (material ?mat) )
	?op <- (operation (feature ?f1) (machine ?m1) (tool ?t1) (process slab-milling) (op-time nil) )
	(machine (name ?m1) (speed-efficiency ?eff) )
	(feature (name ?f1) (dim1 ?length) (dim2 ?fwidth) )
	(tool (name ?t1) (material ?tmat) (diameter ?tdia) (number-of-teeth ?nteeth) (width ?twidth) )
	(cutting-condition (process slab-milling) (part-material ?mat) 
        (tool-material ?tmat) (speed ?speed) (feed ?feed) )
	=>
	(bind ?nopass ( / ?fwidth ?twidth ) )
	(modify ?op (op-time (calculate-mach-time (create$ ?length ?tdia ?speed ?feed ?eff ?nteeth ?fwidth ?twidth) ) ) )
)

(defrule calc-mach-time-end-milling-peripheral
	?op <- (operation (feature ?f1) (machine ?m1) (tool ?t1) (process end-milling-peripheral) (op-time nil) )
	(machine (name ?m1) (speed-efficiency ?eff) )
	(feature (name ?f1) (dim1 ?length) )
	(tool (name ?t1) (material ?tmat) (diameter ?tdia) (number-of-teeth ?nteeth) )
    (cutting-condition (process end-milling-peripheral) (part-material ?mat) 
        (tool-material ?tmat) (tool-diameter ?tdia) (speed ?speed) (feed ?feed) )
	(part (material ?mat))
        	=>
	(modify ?op (op-time 
            (calculate-mach-time 
                (create$ ?length ?tdia ?speed ?feed ?eff ?nteeth nil nil) ) ) )	
    )

(defrule calc-mach-time-end-milling-slotting-slot
	(part (material ?mat) )
	?op <- (operation (feature ?f1) (machine ?m1) (tool ?t1) (process end-milling-slotting) (op-time nil) )
	(machine (name ?m1) (speed-efficiency ?eff) )
	(feature (name ?f1) (type slot) (dim1 ?fdepth) (dim3 ?length) )
	(tool (name ?t1) (material ?tmat) (diameter ?tdia) (number-of-teeth ?nteeth) (width ?twidth) )
	(cutting-condition (process end-milling-slotting) (part-material ?mat) (tool-material ?tmat) (tool-diameter ?tdia) (speed ?speed) (feed ?feed) )
	 =>
	 (bind ?nopass (/ ?fdepth 0.25) )
	 (modify ?op (op-time (calculate-mach-time (create$ ?length ?tdia ?speed ?feed ?eff ?nteeth ?fdepth 0.25) ) ) )
)

(defrule calc-mach-cost
	?op <- (operation (machine ?m1) (tool ?t1) (op-time ?optime & ~nil) (cost nil) )
	(tool (name ?t1) (life-cycle ?toollife) (cost ?tcost) )
	(machine (name ?m1) (unit-cost ?ucost) )
	 =>
	(modify ?op (cost (* ?optime ?ucost) )
		(toolcost (* ?tcost (/ ?optime ?toollife) ) ) )
)
