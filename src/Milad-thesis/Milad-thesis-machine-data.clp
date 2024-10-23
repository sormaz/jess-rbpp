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
               T612 T613 T614 T615 T616 T617 T618 T619 T701 T702 T703 T704 T410 T420 T430 T431 T101-nist T221)
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
               T613 T615 T617 T619 T701 T702 T703 T704 TC600 T410 T420 T430 T801 T802 T221)
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

;;;;;;;;; CNC 4-axis Milling Machine with HSS Tools    ;;;;; added for Milad thesis (CNC 4-axis Mill Fast);;;;

(assert (machine
	(name Cnc4axisMillFast)
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
               T613 T615 T617 T619 T701 T702 T703 T704 TC600 T410 T420 T430 T801 T802 T114 T115 T116 T117 T514 T515 T516 T517 T221 T501 T502 T503 T504)
))

(assert (process 
    (name drilling)
    (machine Cnc4axisMillFast))
)

(assert (process 
    (name end-milling-peripheral)
    (machine Cnc4axisMillFast))
)

(assert (process 
    (name end-milling-slotting)
    (machine Cnc4axisMillFast))
)

(assert (process 
    (name slab-milling)
    (machine Cnc4axisMillFast))
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
               T212 T213 T214 T215 T216 T217 T301 T302 T303 T304 T410 T420 T430 T431 T218 T219 T220 T221)
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
               T213 T215 T217 T301 T302 T303 T304 T410 T420 T430 T218 T219 T220 T221)
))


(assert (process 
    (name end-milling-peripheral)
    (machine CncVMillSlow))
)

(assert (process 
    (name end-milling-slotting)
    (machine CncVMillSlow))
)



;;;;;;;;; CNC 4-axis Milling Machine with Carbide Tools    ;;;;; added for Milad thesis (CNC 4-axis Mill Slow);;;;

(assert (machine
	(name Cnc4axisMillSlow)
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
               T613 T615 T617 T619 T701 T702 T703 T704 TC600 T410 T420 T430 T801 T802 T114 T115 T116 T117 T514 T515 T516 T517 T221 T501 T502 T503 T504 T219 T220)
))

(assert (process 
    (name drilling)
    (machine Cnc4axisMillSlow))
)

(assert (process 
    (name end-milling-peripheral)
    (machine Cnc4axisMillSlow))
)

(assert (process 
    (name end-milling-slotting)
    (machine Cnc4axisMillSlow))
)

(assert (process 
    (name slab-milling)
    (machine Cnc4axisMillSlow))
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
               T212 T213 T214 T215 T216 T217 T218 T219 T301 T302 T303 T304 T410 T420 T430 T431 T221)
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
               T213 T215 T217 T301 T302 T303 T304 T410 T420 T430 T218 T219 T220 T221)
))


(assert (process 
    (name end-milling-peripheral)
    (machine CncVMillComb))
)

(assert (process 
    (name end-milling-slotting)
    (machine CncVMillComb))
)
