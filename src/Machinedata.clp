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
    (tool-list T601 T602 T603 T604 T605 T606 T607 T608 T609 T610 T611 
               T612 T613 T614 T615 T616 T617 T618 T619 T701 T702 T703 T704 T410 T420 T430 T431 T101-nist)
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
    (tool-list T601 T603 T605 T607 T609 T611 
               T613 T615 T617 T619 T701 T702 T703 T704 TC600 T410 T420 T430 T801 T802)
))

(assert (process 
    (name chamfer-end-milling) ;for CNC Vertical machine for chamfering***************************
    (machine CncVMillFast))
)

(assert (process 
    (name end-milling-peripheral)
    (machine CncVMillFast))
)

(assert (process 
    (name end-milling-slotting)
    (machine CncVMillFast))
)

(assert (process 
    (name slab-milling)
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
    (tool-list T201 T202 T203 T204 T204-nist T205 T205-nist T206 T207 T208 T209 T210 T211 
               T212 T213 T214 T215 T216 T217 T218 T219 T301 T302 T303 T304 T410 T420 T430 T431)
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
    (tool-list T201 T203 T205 T207 T209 T211 
               T213 T215 T217 T219 T301 T302 T303 T304 T410 T420 T430)
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
    (tool-list T102 T101 T103 T104 T105 T106 T107 T108 T109 T110 T111 T112 T101-nist)
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
    (tool-list T601 T602 T603 T604 T605 T606 T607 T608 T609 T610 T611 
               T612 T613 T614 T615 T616 T617 T618 T619 T701 T702 T703 T704
               T201 T202 T203 T204 T204-nist T205 T205-nist T206 T207 T208 T209 T210 T211 
               T212 T213 T214 T215 T216 T217 T218 T219 T301 T302 T303 T304 T410 T420 T430 T431)
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
    (tool-list T601 T603 T605 T607 T609 T611 
               T613 T615 T617 T619 T701 T702 T703 T704
               T201 T203 T205 T207 T209 T211 
               T213 T215 T217 T219 T301 T302 T303 T304 T410 T420 T430)
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