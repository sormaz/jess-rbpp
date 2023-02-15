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
               T612 T613 T614 T615 T616 T617 T618 T619 T701 T702 T703 T704 T410 T420 T430 T431)
))

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

(assert (tool
	(name T601)
	(material Carbide)
	(for-process end-milling-slotting)
	(diameter 4)
        (length 10)
	(width 0.625)
	(number-of-teeth 4)
	(life-cycle 180)
	(cost 30.000)
	)
)

(assert (process 
    (name end-milling-slotting)
    (machine CncVMillFast)
    )
    )