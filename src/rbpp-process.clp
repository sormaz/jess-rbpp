


;(in-package :ops)
(require rbpp-init)

(defrule topface1.rough.big
	?f <- (feature (name ?f1)
		(type slab) (status input) (quality ?quality&:(> 30 ?quality 100) ) /*(dim2 ?dim2&:(> ?dim2 8) )*/ )  ;commented by mayur (not needed for setup planning)           
	=>
	(modify ?f (status process))
	(assert (operation (feature ?f1) (process face-milling) (cut single) (options or) 
		 ) )
	(assert (operation (feature ?f1) (process slab-milling) (cut single) (options or)
		 ) )
	(assert (operation (feature ?f1) (process planing) (cut single) (options or)
		 ) )
)


(defrule topface2.fine.big
	?f <- (feature (name ?f1)
		(type slab) (status input) (quality ?quality&:(<= ?quality 30) ) /*(dim2 ?dim2&:(> ?dim2 8) )*/ ) ;commented by mayur (not needed for setup planning)
     =>
	(modify ?f (status process) )
	(assert (operation (feature ?f1) (process face-milling) (cut double) (options or)
		 ) )
	(assert (operation (feature ?f1) (process slab-milling) (cut double) (options or)
		 ) )
    (assert (operation (feature ?f1) (process end-milling-peripheral) (cut single) (options or)        ;this process added by mayur for setup planning 3/27/16
		 ) )
)

			
/*(defrule topface3.rough.medium
	?f <- (feature (name ?f1)
		(type slab) (status input) (quality ?quality&:(<= ?quality 100 ) ) (dim2 ?dim2&:(<= ?dim2 8) ) ) ;commented by mayur (not needed for setup planning)
	=>
	(modify ?f (status process))
	(assert (operation (feature ?f1) (process face-milling) (cut single) (options or)
		 ) )
	(assert (operation (feature ?f1) (process side-milling) (cut single) (options or)
		 ) )
	(assert (operation (feature ?f1) (process end-milling-peripheral) (cut single) (options or)
		 ) )
	(assert (operation (feature ?f1) (process planing) (cut single) (options or)
		 ) )
)

			
(defrule topface4.fine.medium
	?f <- (feature (name ?f1)
		(type slab) (status input) (quality ?quality&:(<= ?quality 30 ) ) (dim2 ?dim2&:(> ?dim2 8) ) ) ;commented by mayur (not needed for setup planning)
	=>	(modify ?f (status process) )
	(assert (operation (feature ?f1) (process face-milling) (cut double) (options or)
		 (cost 0.0) ) )
	(assert (operation (feature ?f1) (process sidemilling) (cut double) (options or)
		 (cost 0.0) ) )
	(assert (operation (feature ?f1) (process end-milling-peripheral) (cut double) (options or)
		 (cost 0.0) ) )
)
		
		
(defrule topface5.rough.small
	?f <- (feature (name ?f1)
		(type slab) (status input) (quality ?quality&:(<= ?quality 100) ) (dim2 ?dim2&:(<= ?dim2 2) ) ) ;commented by mayur (not needed for setup planning)
	=>
	(modify ?f (status process))
	(assert (operation (feature ?f1) (process end-milling-peripheral) (cut single) (options or)
		 ) )
	(assert (operation (feature ?f1) (process side-milling) (cut single) (options or)
		 ) )
	(assert (operation (feature ?f1) (process end-milling-slotting) (cut single) (options or)
		 ) )
	(assert (operation (feature ?f1) (process planing) (cut single) (options or)
		 ) )
)


(defrule topface6.fine.medium
	?f <- (feature (name ?f1 )
		(type slab) (status input) (quality ?quality&: (<= ?quality 30) ) (dim2 ?dim2&: (<= ?dim2 2) ) ) ;commented by mayur (not needed for setup planning)
	=>
	(modify ?f (status process) )
	(assert (operation (feature ?f1) (process end-milling-slotting) (cut double) (options or)
		 ) )
	(assert (operation (feature ?f1) (process side-milling) (cut double) (options or)
		 ) )
	(assert (operation (feature ?f1) (process end-milling-peripheral) (cut double )(options or)
		 ) )
)*/

(defrule pocket.rough.small
	?f <- (feature (name ?f1)
		(type pocket) (status input) (quality ?quality&:(<= ?quality 100) ) (dim2 ?dim2&:(<= ?dim2 100) ) )
	=>
	(modify ?f (status process))
	(assert (operation (feature ?f1) (process end-milling-peripheral) (cut single) (options or)
		 ) )	
)

;Create Rules for Chamfer
(defrule chamfer
	?f <- (feature (name ?f1 )
		(type chamfer) (status input) (quality ?quality&: (> ?quality 30) ) )
	=>
	(modify ?f (status process) )
	(assert (operation (feature ?f1) (process chamfer-end-milling ) (cut single) (options or)
		 ) )
	(assert (operation (feature ?f1) (process chamfer-side-milling) (cut single) (options or)
		 ) )
    
)

(defrule slot1.rough
	?f <- (feature (name ?f1 )
		(type slot) (status input) (quality ?quality&: (> ?quality 30) ) )
	=>
	(modify ?f (status process) )
	(assert (operation (feature ?f1) (process end-milling-slotting) (cut single) (options or)
		 ) )
	(assert (operation (feature ?f1) (process side-milling) (cut single) (options or)
		 ) )
    
)
		
(defrule slot2.fine
	?f <- (feature (name ?f1 )
		(type slot) (status input) (quality ?quality&: (<= ?quality 30 ) ) )
	=>
	(modify ?f (status process) )
	(assert (operation (feature ?f1) (process end-milling-slotting) (cut double) (options or)
		 ) )
	(assert (operation (feature ?f1) (process side-milling) (cut double) (options or)
		 ) )
)
		
(defrule hole1.rough
	?f <- (feature (name ?f1 ) 
        (type hole) (status input) (tolerance  ?tolerance&: (> ?tolerance 10 ) ) )
	=>
	(modify ?f (status process) )
	(assert (operation (feature ?f1) (process drilling) (options or)
		 ) ) ; dns 1/17/24 - added value for cost 0.0 to avoid arithmetic error
)

(defrule hole2.fine
	?f <- (feature (name ?f1) (type hole) (status input) (tolerance ?tolerance&: (<= ?tolerance 10) ) )
	=>
	(modify ?f (type bore) )
	(assert (operation (feature ?f1) (process drilling) (options or)
		 ) )
)

(defrule hole3.fine.small
	?f <- (feature (name ?f1) (type bore) (status input) (dim1 ?dim1&: (< ?dim1 1.2) ) )
	=>
	(modify ?f (status process) )
	(assert (operation (feature ?f1) (process reaming) (options and)
		 ) )
)

(defrule hole4.fine.big
    
	?f <- (feature (name ?f1) (type bore) (status input) (dim1 ?dim1&: (>= ?dim1 1.2) ) )
	=>
	(modify ?f (status process) )
	(assert (operation (feature ?f1) (process reaming) (options and)
		 ) )
	(assert (operation (feature ?f1) (process boring) (options and)
		 ) )
)