;(strategy mea)
;(strategy lex)

(defglobal ?*MAX_RANK* = 100)

(deftemplate feature
	(slot name)
	(slot type)
	(slot quality)
	(slot tolerance)
	(slot normal)
	(slot slope (default 0))
	(slot dim1 (default 0)) ; diameter for hole, depth for slot, length for topface, Distance (Radius1) for chamfer
	(slot dim2 (default 0)) ; depth for hole, width for topface and slot, Distance (Radius2) for chamfer
	(slot dim3 (default 0)) ; length for slot , Angle for Chamfer
	(slot diam03 (default 0))
    (slot object) ; to store a reference to jave object corresponding to the fact
	(slot status)
    (multislot nextFPN)
    (multislot previousFPN)
)
			
(deftemplate perpendicular
	(slot domain) ; feature that is perpendicular
	(slot range) ; reference feature
)
	
(deftemplate parallel ; feature to which this one is parallel
	(slot domain) ; feature that is parallel
	(slot range) ; reference feature
)
	
(deftemplate intersect
	(slot first)
	 (slot second)
)
	
(deftemplate open-from
	 (slot domain) ; feature that is open
	 (slot range) ; feature from which domain is open (reference)
)

(deftemplate solid
	(slot name)
	(slot type)
	(slot first-child)
	(slot sec-child)
	(slot operation)
	(slot dim1)
	(slot dim2)
	(slot dim3)
	(slot x-pos)
	(slot y-pos)
	(slot z-pos)
	(slot x-or)
	(slot y-or)
	(slot z-or)
	(slot Wt)
)
	
(deftemplate part
	(slot material)
	(slot x-dim)
	(slot y-dim)
	(slot z-dim)
	(slot quality)
	(slot batch-size)
)
	
(deftemplate process
	(slot name)
	(slot machine)
)

(deftemplate operation
	(slot feature)
	(slot process)
	(slot cut)
	
	(slot options) ; or for alternatives, and for more than one for the same feature
	(slot rank (type INTEGER) (default 100))
	(slot machine)
	(slot tool)
	(slot resting-face)
	(slot setup-time)
	(slot op-time (default -1))
	(slot cost)
	(slot setup-cost)
	(slot mhandle-cost)
	(slot toolchange-cost)
	(slot toolcost)
	(slot cum-cost)
    
)
	
(deftemplate machine
	(slot name)
	(slot type)
	(slot toolhead)
	(slot bed-size-x)
	(slot bed-size-y)
	(slot bed-size-z)
	(slot setup-time)
	(slot power)
	(slot mhandling-time)
	(slot speed-efficiency)
	(slot tool-change-time)
	(slot unit-cost)
    (multislot tool-list)
    (slot imp-machine)
)

(deftemplate tool
	(slot name)
	(slot material)
	(slot for-process)
	(slot diameter)
	(slot width)
	(slot length (default 0.0))
	(slot number-of-teeth (default 1))
	(slot life-cycle)
	(slot cost)
    (slot imp-tool)
    (slot chamfer-angle (default 0.0))
    (slot chamfer-lenght(default 0.0))
)

(deftemplate cutting-condition
	(slot process)
	(slot part-material)
	(slot tool-material)
	(slot tool-diameter)
	(slot speed)
	(slot feed)
)
	
(deftemplate opposite-direction
	(slot first)
	(slot second)
)

(deftemplate do-after
	(slot former)
	(slot later)
)

(provide rbpp-init)
