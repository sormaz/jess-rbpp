

;(in-package :ops)

(require rbpp-init)


(defrule intersection.simetry
	(intersect (first ?f1) (second ?f2) )
	(not (intersect (first ?f2) (second ?f1) ) )
	=>
	(assert (intersect  (first ?f2) (second ?f1) ) )
)

(defrule opposite-direction.simetry
	(opposite-direction (first ?f1) (second ?f2) )
	(not (opposite-direction (first ?f2) (second ?f1) ) )
	=>
	(assert (opposite-direction (first ?f2) (second ?f1) ) )
)
	
(defrule rel1.hole-slot-order-size
	(feature (name ?fname1) (type hole|bore) (diam03 ?dmod) )
	(feature (name ?fname2) (type slot) (dim2 ?dim2&:(> ?dim2 ?dmod) ) )
	(intersect (first ?fname1) (second ?fname2) )
	=>
	(assert (do-after (former ?fname1) (later ?fname2) ))
)

(defrule rel2.hole-topface-order-slope-big
	(feature (name ?fname1) (type hole) )
	(feature (name ?fname2) (type topface) (slope ?slope&:(> ?slope 10) ) )
	(open-from (domain ?fname1) (range ?fname2) )
	=>
	(assert (do-after (former ?fname1) (later ?fname2) ))
)
	
(defrule rel2a.hole-topface-order-slope-small
	(feature (name ?fname1) (type hole) )
	(feature (name ?fname2) (type topface) (slope ?slope&:(<= ?slope 10 ) ) )
	(open-from (domain ?fname1) (range ?fname2) )
	=>
	(assert (do-after (former ?fname2) (later ?fname1) ))
)
	
(defrule rel2b.slot-topface-order
	(feature (name ?fname1) (type slot) )
	(feature (name ?fname2) (type topface | slot ) )
	(open-from (domain ?fname1) (range ?fname2) )
	=>
	(assert (do-after (former ?fname2) (later ?fname1) ))
)
	
(defrule rel34.feat-topface-order-parallel
	(feature (name ?fname1) (type hole | slot) )
	(feature (name ?fname2) (type topface ) )
	(parallel (domain ?fname1) (range ?fname2) )
	=>
	(assert (do-after (former ?fname2) (later ?fnamel) ))
)	

(defrule re156.feat-topface-order-perpendicular
	(feature (name ?fname1) (type hole|slot) )
	(feature (name ?fname2) (type topface) )
	(perpendicular (domain ?fname1) (range ?fname2) )
	=>
 	(assert (do-after (former ?fname2) (later ?fname1) ))
)
	
(defrule hole-width-03
	?f <- (feature (type hole) (dim1 ?diam) (diam03 nil) )
	=>
	(modify ?f (diam03 * ?diam 0.3) )
)
	
;(defrule order-defined
;	?f <- (feature (status input) )
;	=>
;	(modify ?f (status order) )
;) 
