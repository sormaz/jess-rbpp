(assert (tool
	(name T202)
	(material Hss)
	(for-process side-milling)
	(diameter 5.0)
        (width 0.625)
	(length 10.0)
	(life-cycle 180)
	(cost 30.000))
)

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
    (tool-list T202)
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