
;(in-package :ops)

(require rbpp-init)

(defrule rule1-mach
    (feature (name ?f1) )
    (part (x-dim ?dim-x) (y-dim ?dim-y) (z-dim ?dim-z))
    ?op <- (operation (feature ?f1) (process ?p1) (machine nil) )
    (process (name ?p1) (machine ?m1) )
    (machine (name ?m1) (bed-size-x ?bed-size-x&:(>= ?bed-size-x ?dim-x) ) 
        				(bed-size-y ?bed-size-y&:(>= ?bed-size-y ?dim-y) ) 
        				(bed-size-z ?bed-size-z&:(>= ?bed-size-z ?dim-z) ) )
    =>
    (modify ?op (machine ?m1) )
    )

(defrule rule2-mach-alternate
    (feature (name ?f1) )
    (part (x-dim ?dim-x) (y-dim ?dim-y) (z-dim ?dim-z) )
    (operation (feature ?f1) (process ?p1) (machine ?m1&~nil ) (tool nil) )
    (process (name ?p1) (machine ?m2) )
    (machine (name ?m2 ) (bed-size-x ?bed-size-x&:(>= ?bed-size-x ?dim-x) ) 
        				(bed-size-y ?bed-size-y&:(>= ?bed-size-y ?dim-y) ) 
        				(bed-size-z ?bed-size-z&:(>= ?bed-size-z ?dim-z) ) )
    (not (operation (feature ?f1) (process ?p1) (machine ?m2) ) )
    =>
    (assert (operation (feature ?f1) (process ?p1) (machine ?m2) (tool nil) ) )
    )
