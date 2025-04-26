
;(in-package : ops)
(require rbpp-init)

(assert (machine
	(name ML100)
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
	(unit-cost 1.3))
)

(assert (process 
    (name face-milling)
    (machine ML100))
)

(assert (process 
    (name side-milling) 
    (machine ML100))
)

(assert (process 
    (name end-milling-peripheral)
    (machine ML100))
)

(assert (process 
    (name milling-slotting)
    (machine ML100))
)

(assert (machine
	(name ML200)
	(type mill)
	(toolhead vertical)
	(bed-size-x 48)
	(bed-size-y 20)
	(bed-size-z 10)
	(setup-time 320)
	(power 3)
	(mhandling-time 1.2)
	(speed-efficiency 0.9)
	(tool-change-time 30)
	(unit-cost 1.2))
)

(assert (process 
    (name face-milling)
    (machine ML200))
)
    
(assert (process 
	(name end-milling-peripheral) 
    (machine ML200))
)
    
(assert (process 
	(name milling-slotting)
	(machine ML200))
)

(assert (machine
	(name ML250)
	(type mill)
	(toolhead vertical)
	(bed-size-x 48)
	(bed-size-y 20)
	(bed-size-z 10)
	(setup-time 300)
	(power 3)
	(mhandling-time 1.15)
	(speed-efficiency 0.9)
	(tool-change-time 30)
	(unit-cost 1.2))
)

(assert (process 
	(name side-milling)
	(machine ML250))
)

(assert (process 
	(name slab-milling)
	(machine ML250))
)

(assert (process 
	(name end-milling-peripheral)
	(machine ML250))
)

(assert (process 
	(name end-milling-slotting)
	(machine ML250))
)
        

(assert (machine
	(name ML300)
	(type cnc-mill)
	(toolhead universal)
	(bed-size-x 58)
	(bed-size-y 25)
	(bed-size-z 15)
	(setup-time 560)
	(power 5)
	(mhandling-time 0.6)
	(speed-efficiency 0.9)
	(tool-change-time 0)
	(unit-cost 1.35))
)

(assert (process
	(name face-milling)
	(machine ML300))
)

(assert (process
	(name side-milling)
	(machine ML300))
)

(assert (process
	(name slab-milling)
	(machine ML300))
)

(assert (process
	(name end-milling-peripheral)
	(machine ML300))
)

(assert (process
	(name end-milling-slotting)
	(machine ML300))
)

(assert (machine
	(name DRl00) 
	(type drill)
	(toolhead vertical)
	(bed-size-x 54)
	(bed-size-y 18)
	(bed-size-z 10)
	(setup-time 240)
	(power 4)
	(mhandling-time 0.5)
	(speed-efficiency 1.0)
	(tool-change-time 10)
	(unit-cost 1.15))
)

(assert (process
	(name drilling)
	(machine DR100))
)

(assert (process
	(name reaming)
	(machine DR100))
)

(assert (process
	(name tapping)
	(machine DR100))
)

(assert (machine
	(name DR200)
	(type drill)
	(toolhead vertical)
	(bed-size-x 38)
	(bed-size-y 16)
	(bed-size-z 10)
	(setup-time 120)
	(power 3)
	(mhandling-time 0.6)
	(speed-efficiency 1.0)
	(tool-change-time 0)
	(unit-cost 1.0))
)

(assert (process
	(name drilling)
	(machine DR200))
)

(assert (process
	(name reaming)
	(machine DR200))
)

(assert (process
	(name tapping)
	(machine DR200))
)

(assert (machine
	(name BRl00)
	(type bore)
	(toolhead vertical)
	(bed-size-x 58)
	(bed-size-y 20)
	(bed-size-z 12)
	(setup-time 300)
	(power 4)
	(mhandling-time 0.8)
	(speed-efficiency 0.95)
	(tool-change-time 40)
	(unit-cost 1.25))
)

(assert (process
	(name boring)
	(machine BR100))
)
        

(assert (process
	(name counter-boring)
	(machine BR100))
)

(assert (machine
	(name BR200)
	(type bore)
	(toolhead vertical)
	(bed-size-x 48)
	(bed-size-y 16)
	(bed-size-z 12)
	(setup-time 500)
	(power 4)
	(mhandling-time 1.0)
	(speed-efficiency 0.9)
	(tool-change-time 0)
	(unit-cost 1.28))
)

(assert (process
	(name boring)
	(machine BR200))
)

(assert (process
	(name counter-boring)
	(machine BR200))
 )

(assert (machine
	(name MCl00)
	(type machine-center)
	(toolhead universal)
	(bed-size-x 62)
	(bed-size-y 20)
	(bed-size-z 16)
	(setup-time 600)
	(power 4)
	(mhandling-time 0.5)
	(speed-efficiency 0.9)
	(tool-change-time 0)
	(unit-cost 1.2))
)

(assert (process
	(name face-milling)
	(machine MC100))
)

(assert (process
	(name side-milling)
	(machine MC100))
)

(assert (process
	(name slab-milling)
	(machine MC100))
)

(assert (process
	(name end-milling-peripheral)
	(machine MC100))
)




(assert (process
	(name end-milling-slotting)
	(machine MC100))
)

(assert (process
	(name drilling)
	(machine MC100))
)

(assert (process
	(name reaming)
	(machine MC100))
)

(assert (process
	(name boring)
	(machine MC100))
)

(assert (machine
	(name PLl00)
	(type planer)
	(toolhead vertical)
	(bed-size-x 62)
	(bed-size-y 24)
	(bed-size-z 18)
	(setup-time 540)
	(power 4.5)
	(mhandling-time 1.6)
	(speed-efficiency 1.0)
	(tool-change-time 20)
	(unit-cost 1.3))
)

(assert (process
	(name planing)
	(machine PL100))
)