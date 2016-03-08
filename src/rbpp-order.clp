
;(in-package :ops)

(require rbpp-init)

(defrule select-first-feature
	?f <- (feature (name ?f1) (status process) )
	?op <- (operation (feature ?f1) (cost ~nil) )
	(not (do-after (later ?f1) ))
	(not (operation (rank ~nil) ) )
	=>
	(modify ?f (status planned))
	(modify ?op (rank 1))
) 
    
(defrule select-other-ops-for-feature
	(operation (feature ?f1) (rank ?rank&~nil) )
	?op <- (operation (feature ?f1) (rank nil) (cost ~nil) )
	(feature (name ?f1) (status planned) )
	=>
	(modify ?op (rank ?rank) )
)

(defrule feature-ordered
	?f <- (feature (name ?f1) (status planned) )
	(operation (feature ?f1) (rank ~nil) )
	(not (operation (feature ?f1) (rank nil) (cost ~nil) ) )
	(not (feature (status process) ) )
	=>
	(modify ?f (status ordered) )
)

(defrule select-new-rank
	?f <- (feature (name ?f1) (status planned) ) ; if above rule is active change to oredred
	(operation (feature ?f1) (rank ?rank&~nil) )
	 (not (operation (rank ?r&~nil&:(> ?r ?rank)  ) ))
	?op <- (operation (feature ?f2&~?f1) (cost ~nil) (rank nil) )
	?nf <-(feature (name ?f2) (status process) )
	(feature (name ?f3&~?f2&~?f1) (status process) )
	(not (do-after (former ?f3) (later ?f2) ) )
	=>
	(modify ?nf (status planned) )
	(modify ?op (rank ( + ?rank 1) ) )
)
        
(defrule select-last-rank
	?1f <- (feature (name ?f1) (status planned) ) ; if above rule is active change to oredred
	(operation (feature ?f1) (rank ?rank&~nil) )
    (not (operation (rank ?r&~nil&:(> ?r ?rank) ) ))
	?op <- (operation (feature ?f2&~?f1) (cost ~nil) (rank nil) )
	?2f <- (feature (name ?f2) (status process) )
	=>
	(modify ?2f (status planned) )
	(modify ?op (rank (+ ?rank 1) ) )
)

