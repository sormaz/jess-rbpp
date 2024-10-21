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
    (tool-list T615 T616 T704)
))

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

;;;;;;;;; CNC Vertical Milling Machine with Carbide Tools 

(assert (machine
	(name CncVMillFast)
	(type mill)
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
    (tool-list T615 T617 T619 T704)
))

(assert (process 
    (name end-milling-peripheral)
    (machine CncVMillFast))
)

(assert (process 
    (name end-milling-slotting)
    (machine CncVMillFast))
)

;;;;;;;;; CNC Drilling Machine with Carbide Tools 

(assert (machine
	(name CncDrillFast)
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
    (tool-list T501 T502 T503 T504 T505 T506 T507 T508 T509 T510 T511 
               T512)
))


(assert (process 
    (name drilling)
    (machine CncDrillFast))
)

;;;;;;;;;;;;;;;;;----------------------------------Machines with HSS tools----------------;;;;;;;;;;

;;;;;;;;; CNC Horizontal Milling Machine with HSS Tools 

(assert (machine
	(name CncHMillSlow)
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
    (tool-list T215 T216 T217 T218 T304)
))

(assert (process 
    (name side-milling) 
    (machine CncHMillSlow))
)

(assert (process 
    (name end-milling-peripheral)
    (machine CncHMillSlow))
)

(assert (process 
    (name end-milling-slotting)
    (machine CncHMillSlow))
)

;;;;;;;;; CNC Vertical Milling Machine with HSS Tools 

(assert (machine
	(name CncVMillSlow)
	(type mill)
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
    (tool-list T215 T304 T217)
))


(assert (process 
    (name end-milling-peripheral)
    (machine CncVMillSlow))
)

(assert (process 
    (name end-milling-slotting)
    (machine CncVMillSlow))
)

;;;;;;;;; CNC Drilling Machine with HSS Tools 

(assert (machine
	(name CncDrillSlow)
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
    (tool-list T102 T101 T103 T104 T105 T106 T107 T108 T109 T110 T111 T112)
))


(assert (process 
    (name drilling)
    (machine CncDrillSlow))
)


;;;;;;;;;;;;;;;;;----------------------Machines with HSS and Carbide tools----------------;;;;;;;;;;

;;;;;;;;; CNC Horizontal Milling Machine with Carbide and HSS Tools 

(assert (machine
	(name CncHMillComb)
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
    (tool-list T615 T616 T704
               T215 T216 T217 T218)
))

(assert (process 
    (name side-milling) 
    (machine CncHMillComb))
)

(assert (process 
    (name end-milling-peripheral)
    (machine CncHMillComb))
)

(assert (process 
    (name end-milling-slotting)
    (machine CncHMillComb))
)

;;;;;;;;; CNC Vertical Milling Machine with Carbide and HSS Tools 

(assert (machine
	(name CncVMillComb)
	(type mill)
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
    (tool-list T615 T704
               T304 T217)
))


(assert (process 
    (name end-milling-peripheral)
    (machine CncVMillComb))
)

(assert (process 
    (name end-milling-slotting)
    (machine CncVMillComb))
)

;(provide aes94_mdata)