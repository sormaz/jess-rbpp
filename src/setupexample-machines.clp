; file to enter machine data for Ronny's example


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Machines For Carbide Tools ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;; CNC Drilling Machine with Carbide Tools ;;;;;;;;;;;;;

(assert (machine
	(name RDrillFast)
	(type drill)
	(toolhead vertical)
	(bed-size-x 54)
	(bed-size-y 20)
	(bed-size-z 10)
	(setup-time 240)
	(power 4)
	(mhandling-time 0.8)
	(speed-efficiency 1.0)
	(tool-change-time 40)
	(unit-cost 1.3)
    (tool-list TR141 TR142 T470)
))


(assert (process 
    (name drilling)
    (machine RDrillFast))
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
    (tool-list TR21212 TR21208)
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