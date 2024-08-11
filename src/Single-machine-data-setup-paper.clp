(require rbpp-init)
;;;;;;;;;;;;;;;;;----------------------------------Machines with Carbide tools----------------;;;;;;;;;;

;;;;;;;;; CNC Horizontal Milling Machine with Carbide Tools 


(assert (machine
	(name CncHMillFast)
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
    (tool-list T304 T302 T802 T704 T512 T513 T101 T102 T201 T901 T218 T902)
))


(assert (process 
    (name chamfer-side-milling);for CNC Vertical machine for chamfering***************************
    (machine CncHMillFast))
)

(assert (process 
    (name side-milling) 
    (machine CncHMillFast))
)

(assert (process 
    (name end-milling-peripheral)
    (machine CncHMillFast))
)

(assert (process 
    (name end-milling-slotting)
    (machine CncHMillFast))
)

(assert (process 
    (name drilling)
    (machine CncHMillFast))
)
