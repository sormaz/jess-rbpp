;(in-package :ops)

(require rbpp-init)

(defrule write-operation
	(feature (name ?f1) (status ordered))
	(operation (feature ?f1) (process ?p1) (machine  ?m1&~nil) 
		(tool ?t1&~nil) (resting-face ?rf) (op-time ?ot&~nil) (rank ?rank&~100) )
=>
	(printout t "operation end: " ?rank ?f1 ?p1 ?m1 ?t1 ?rf ?ot crlf)
)
