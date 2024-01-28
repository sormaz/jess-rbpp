; file to enter machine data for Ronny's example


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Machines For Carbide Tools ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;; CNC Drilling Machine with Carbide Tools ;;;;;;;;;;;;;




(assert (process 
    (name drilling)
    (machine RCnCHMillFast))
)

(assert (process 
    (name side-milling)
    (machine RCnCHMillFast))
)
(assert (process 
    (name slab-milling)
    (machine RCnCHMillFast))
)
(assert (process 
    (name face-milling)
    (machine RCnCHMillFast))
)

;;;;;;;;; CNC Milling Machine with Carbide Tools ;;;;;;;;;;;;;

(assert (machine
	(name RCnCHMillFast)
	(type mill)
	(toolhead horizontal)
	(bed-size-x 54)
	(bed-size-y 20)
	(bed-size-z 10)
	(setup-time 240)
	(power 4)
	(mhandling-time 0.8)
	(speed-efficiency 1.0)
	(tool-change-time 40)
	(unit-cost 1.3)
    (tool-list Td-2.4 Td-4.8)
))
    
 
 
    
    (assert (process 
    (name side-milling) 
    (machine RCnCHMillFast))
)

(assert (process 
    (name end-milling-peripheral)
    (machine RCnCHMillFast))
)

(assert (process 
    (name end-milling-slotting)
    (machine RCnCHMillFast))
)