
;(in-package :ops)

(require rbpp-init)



(defrule select-first-feature
	?f <- (feature (name ?f1) (status process) )
	?op <- (operation (feature ?f1)  )  ; dns 1/27/24 - removed (cost ~nil) to pass without cut parameters and cost causes error in arithmetic
	(not (do-after (later ?f1) ))
	(not (operation (rank ~100) ) )
	=>
	(modify ?f (status planned))
	(modify ?op (rank 1))
) 
    
(defrule select-other-ops-for-feature
	(operation (feature ?f1) (rank ?rank&~100) )
	?op <- (operation (feature ?f1) (rank 100) (cost ~nil) )
	(feature (name ?f1) (status planned) )
	=>
	(printout t "in other-ops-rule, feature is " ?f1 crlf)
	(printout t "in other-ops-rule, rank is " ?rank crlf)
	(modify ?op (rank ?rank) )
)

(defrule feature-ordered
	?f <- (feature (name ?f1) (status planned) )
	(operation (feature ?f1) (rank ~100) )
	(not (operation (feature ?f1) (rank 100) (cost ~nil) ) )
	(not (feature (status process) ) )
	=>
	(modify ?f (status ordered) )
)

(defrule select-new-rank
	?f <- (feature (name ?f1) (status planned) ) ; if above rule is active change to oredred
	(operation (feature ?f1) (rank ?rank&~100) )
	 (not (operation (rank ?r&~100&:(> ?r ?rank)  ) ))
	?op <- (operation (feature ?f2&~?f1) (cost ~nil) (rank 100) )
	?nf <-(feature (name ?f2) (status process) )
	(feature (name ?f3&~?f2&~?f1) (status process) )
	(not (do-after (former ?f3) (later ?f2) ) )
	=>
	(modify ?nf (status planned) )
	(modify ?op (rank ( + ?rank 1) ) )
)
        
(defrule select-last-rank
	?1f <- (feature (name ?f1) (status planned) ) ; if above rule is active change to oredred
	(operation (feature ?f1) (rank ?rank&~100) )
    (not (operation (rank ?r&~100&:(> ?r ?rank) ) ))
	?op <- (operation (feature ?f2&~?f1) (cost ~nil) (rank 100) )
	?2f <- (feature (name ?f2) (status process) )
	=>
	(modify ?2f (status planned) )
	(modify ?op (rank (+ ?rank 1) ) )
)

