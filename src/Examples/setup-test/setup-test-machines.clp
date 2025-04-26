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
    (tool-list T703 T704
               )
))


(assert (process 
    (name end-milling-peripheral)
    (machine CncVMillComb))
)