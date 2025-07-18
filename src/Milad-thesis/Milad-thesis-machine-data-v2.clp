(require rbpp-init)
;;;;;;;;;;;;;;;;;----------------------------------Machines with Carbide tools----------------;;;;;;;;;;

;;;;;;;;; CNC Horizontal Milling Machine with Carbide Tools 


(assert (machine
	(name HMillFast)
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
    (tool-list T113 T114 
				T501 T502 T503 T504 T505 T506 T507 T508 T509 T510 T511 T512 T517 T518
				T601 T602 T603 T604 T605 T606 T607 T608 T609 T610 T611 T612	T613 T614 T615 T616	T617 T618 T619 T702
				T702 T703 T704 T705)
))

(assert (process 
    (name chamfer-side-milling);for CNC Vertical machine for chamfering***************************
    (machine HMillFast))
)

(assert (process 
    (name side-milling) 
    (machine HMillFast))
)

(assert (process 
    (name end-milling-peripheral)
    (machine HMillFast))
)

(assert (process 
    (name end-milling-slotting)
    (machine HMillFast))
)

;;;;;;;;; CNC Vertical Milling Machine with Carbide Tools 

(assert (machine
	(name VMillFast)
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
    (tool-list T113 T114 
				T501 T502 T503 T504 T505 T506 T507 T508 T509 T510 T511 T512 T517 T518
				T601 T602 T603 T604 T605 T606 T607 T608 T609 T610 T611 T612	T613 T614 T615 T616	T617 T618 T619 T702
				T702 T703 T704 T705)
))

(assert (process 
    (name chamfer-end-milling) ;for CNC Vertical machine for chamfering***************************
    (machine VMillFast))
)

(assert (process 
    (name end-milling-peripheral)
    (machine VMillFast))
)

(assert (process 
    (name end-milling-slotting)
    (machine VMillFast))
)

(assert (process 
    (name slab-milling)
    (machine VMillFast))
)

;;;;;;;;; CNC 4-axis Milling Machine with Carbide Tools    ;;;;; added for Milad thesis (CNC 4-axis Mill Fast);;;;

(assert (machine
	(name 4axisMillFast)
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
    (tool-list T113 T114 
				T501 T502 T503 T504 T505 T506 T507 T508 T509 T510 T511 T512 T517 T518
				T601 T602 T603 T604 T605 T606 T607 T608 T609 T610 T611 T612	T613 T614 T615 T616	T617 T618 T619 T702
				T702 T703 T704 T705)
))

(assert (process 
    (name drilling)
    (machine 4axisMillFast))
)

(assert (process 
    (name end-milling-peripheral)
    (machine 4axisMillFast))
)

(assert (process 
    (name end-milling-slotting)
    (machine 4axisMillFast))
)

(assert (process 
    (name slab-milling)
    (machine 4axisMillFast))
)

(assert (process 
    (name TwistDrilling)
    (machine 4axisMillFast))
)

;;;;;;;;;;;;;;;;;----------------------------------Machines with HSS tools----------------;;;;;;;;;;

;;;;;;;;; CNC Horizontal Milling Machine with HSS Tools 

(assert (machine
	(name HMillSlow)
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
    (tool-list T201 T202 T203 T204 T204-nist T205 T205-nist T207 T208 T209 T210 T220 T211 
               T212 T213 T214 T215 T216 T217 T301 T302 T303 T304 T305 T410 T420 T430 T431 T218 T219 T220 T221 T103 T104)
))

(assert (process 
    (name side-milling) 
    (machine HMillSlow))
)

(assert (process 
    (name end-milling-peripheral)
    (machine HMillSlow))
)

(assert (process 
    (name end-milling-slotting)
    (machine HMillSlow))
)

;;;;;;;;; CNC Vertical Milling Machine with HSS Tools 

(assert (machine
	(name VMillSlow)
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
    (tool-list T101 T102 T103 T104 T105 T106 T107 T108 T109 T110 T111 T112	T114 T115 T116 T117	T118
				T201 T202 T203 T204	T205 T206 T207 T208	T209 T210 T211 T212	T213 T214 T215 T216	T217 T218 T219 T220	T221 
				T301 T302 T303 T304	T305)
))


(assert (process 
    (name end-milling-peripheral)
    (machine VMillSlow))
)

(assert (process 
    (name end-milling-slotting)
    (machine VMillSlow))
)



;;;;;;;;; CNC 4-axis Milling Machine with Hss Tools    ;;;;; added for Milad thesis (CNC 4-axis Mill Slow);;;;

(assert (machine
	(name 4axisMillSlow)
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
    (tool-list T101 T102 T103 T104 T105 T106 T107 T108 T109 T110 T111 T112	T114 T115 T116 T117	T118
				T201 T202 T203 T204	T205 T206 T207 T208	T209 T210 T211 T212	T213 T214 T215 T216	T217 T218 T219 T220	T221 
				T301 T302 T303 T304	T305)
))

(assert (process 
    (name drilling)
    (machine 4axisMillSlow))
)

(assert (process 
    (name end-milling-peripheral)
    (machine 4axisMillSlow))
)

(assert (process 
    (name end-milling-slotting)
    (machine 4axisMillSlow))
)

(assert (process 
    (name slab-milling)
    (machine 4axisMillSlow))
)

;;;;;;;;;;;;;;;;;----------------------Machines with HSS and Carbide tools----------------;;;;;;;;;;

;;;;;;;;; CNC Horizontal Milling Machine with Carbide and HSS Tools 

(assert (machine
	(name HMillMed)
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
    (tool-list T101 T102 T103 T104 T105 T106 T107 T108 T109 T110 T111 T112	T113 T114 T115 T116 T117 T118 
			T201 T202 T203 T204	T205 T206 T207 T208	T209 T210 T211 T212	T213 T214 T215 T216	T217 T218 T219 T220	T221 
			T301 T302 T303 T304	T305
			T501 T502 T503 T504 T505 T506 T507 T508 T509 T510 T511 T512 T517 T518
			T601 T602 T603 T604 T605 T606 T607 T608 T609 T610 T611 T612	T613 T614 T615 T616	T617 T618 T619 T702
			T702 T703 T704 T705)
))

(assert (process 
    (name side-milling) 
    (machine HMillMed))
)

(assert (process 
    (name end-milling-peripheral)
    (machine HMillMed))
)

(assert (process 
    (name end-milling-slotting)
    (machine HMillMed))
)

;;;;;;;;; CNC Vertical Milling Machine with Carbide and HSS Tools 

(assert (machine
	(name VMillMed)
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
    (tool-list T101 T102 T103 T104 T105 T106 T107 T108 T109 T110 T111 T112	T113 T114 T115 T116 T117 T118 
			T201 T202 T203 T204	T205 T206 T207 T208	T209 T210 T211 T212	T213 T214 T215 T216	T217 T218 T219 T220	T221 
			T301 T302 T303 T304	T305
			T501 T502 T503 T504 T505 T506 T507 T508 T509 T510 T511 T512 T517 T518
			T601 T602 T603 T604 T605 T606 T607 T608 T609 T610 T611 T612	T613 T614 T615 T616	T617 T618 T619 T702
			T702 T703 T704 T705)
))


(assert (process 
    (name end-milling-peripheral)
    (machine VMillMed))
)

(assert (process 
    (name end-milling-slotting)
    (machine VMillMed))
)
