;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Chamfer ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(assert (tool
	(name TC600)
	(material Carbide)
	(for-process chamfer-end-milling)
	(diameter 4.0)
    	(length 10.0)
	(number-of-teeth 4)
    (chamfer-angle 45)   
    (chamfer-lenght 0.5)
	(life-cycle 180)
	(cost 30.000)
))

(assert (process 
    (name chamfer-end-milling) ;for CNC Vertical machine for chamfering***************************
    (machine CncVMillFast))
)


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
    (tool-list TC600 T601 T603 T605 T607 T609 T611 
               T613 T615 T617 T619 T701 T702 T703 T704 TC600)
))