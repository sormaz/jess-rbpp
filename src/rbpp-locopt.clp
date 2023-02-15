;(in-package :ops)

(require rbpp-init)

(defrule cost-first-op
	?op <- (operation (rank ?rank&~100) (machine ?m1) (tool ?t1) (cost ?cost) (cum-cost nil) )
	(part (batch-size ?batch) )
	(machine (name ?m1) (setup-time ?setup) (unit-cost ?ucost)
		(mhandling-time ?mh) (tool-change-time ?tch) )
	(not (operation (rank 100) (cost ~nil) ) )
	(not (operation (rank ?r&:(< ?r ?rank)) (cost ~nil) ) )
	=>
	(bind ?setupc (* ?ucost (/ ?setup ?batch) ) )
	(bind ?mhc (* ?mh ?ucost) ) 
	(bind ?tchcost (* ?tch ?ucost) ) 
	(printout t "costs: "  ?setupc " " ?mhc " " ?tchcost crlf)
	(modify ?op (setup-cost ?setupc) 
		(mhandle-cost ?mhc)
		(toolchange-cost ?tchcost)
		(cum-cost ( + ?cost ?setupc ?mhc ?tchcost) ))
)
        
(defrule feature-ranked
	?f <- (feature (name ?f1) (status planned))
	(not (operation (feature ?f1) (op-time ~nil) (cum-cost nil) ) )
	=>
	(modify ?f (status ordered) )
)
    
(defrule loc-opt-cost
	(feature (name ?f1) (status ordered) )
	(operation (feature ?f1) (process ?pl) (machine ?m1) (tool ?t1) (cum-cost ?cucost&~nil) )
	(not (operation (feature ?f1) (rank ~100) (machine ~nil) (cum-cost nil) ) )
	(not (operation (feature ?f1) (rank ~100 ) (cum-cost ?c&:(< ?c ?cucost) ) ))
	=>
	(printout t "operation: " ?f1 " " ?pl " " ?m1 " " ?t1 " " ?cucost crlf) )