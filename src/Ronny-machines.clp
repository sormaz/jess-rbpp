; file to enter machine data for Ronny's example

;;;;;;;;; CNC Drilling Machine with Carbide Tools 

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
    (tool-list TR141)
))


(assert (process 
    (name drilling)
    (machine RDrillFast))
)