
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
    (name side-milling) 
    (machine ML100))
)

(assert (process 
    (name drilling) 
    (machine ML100))
)

(assert (process 
    (name end-milling-peripheral)
    (machine ML100))
)

(assert (process 
    (name end-milling-slotting)
    (machine ML100))
)

(assert (tool
	(name T410)
	(material Hss)
	(for-process end-milling-slotting)
	(diameter 3.0)
(length 2.0)
	(number-of-teeth 4)
	(life-cycle 180)
	(cost 30.000))
)


(assert (tool
    (name T460)
    (material Hss)
    (for-process drilling)
    (diameter 1.5)
    (length 5.0)
    (life-cycle 180)
	(cost 30.000))
)

(assert (tool
	(name T510)
	(material Hss)
	(for-process end-milling-slotting)
	(diameter 1.0)
(length 2.0)

	(number-of-teeth 4)
	(life-cycle 180)
	(cost 30.000))
)

(assert (tool
	(name T310)
	(material Hss)
	(for-process end-milling-peripheral)
	(diameter 1.5)
	(length 5.0)
	(life-cycle 240)
	(cost 25.000))
)






(assert (tool
	(name T520)
	(material Hss)
	(for-process drilling)
	(diameter 1.0)
	(length 2.0)
	(life-cycle 180)
	(cost 30.000))
)

(assert (tool
	(name T620)
	(material Hss)
	(for-process side-milling)
	(diameter 10.0)
        (width 3.0)
(length 2.0)

	(life-cycle 180)
	(cost 30.000))
)

(assert (tool
	(name T630)
	(material Hss)
	(for-process side-milling)
	(diameter 1.0)
        (width 1.0)
	(length 2.0)
	(life-cycle 180)
	(cost 30.000))
)


(assert (tool
	(name T1400)
	(material Hss)
	(for-process side-milling)
	(diameter 10.0)
        (width 2.5)
	(length 2.0)
	(life-cycle 180)
	(cost 30.000))
)

(assert (tool
	(name T1450)
	(material Hss)
	(for-process end-milling-slotting)
	(diameter 2.5)
	(length 2.0)
	(number-of-teeth 4)
	(life-cycle 180)
	(cost 30.000))
)

(assert (cutting-condition 	
    	(process slab-milling)
		(part-material CarbonSteel)
		(tool-material Hss)
		(tool-diameter 10.0)
		(speed 300)
		(feed 0.003)
        ))

(assert (cutting-condition 	
    	(process end-milling-slotting)
		(part-material CarbonSteel)
		(tool-material Hss)
		(tool-diameter 2.5)
		(speed 300)
		(feed 0.003)
        ))

(assert (tool
	(name T1300)
	(material Hss)
	(for-process side-milling)
	(diameter 10.0)
        (width 2.0)
	(length 2.0)
	(life-cycle 180)
	(cost 30.000))
)

(assert (tool
	(name T1350)
	(material Hss)
	(for-process end-milling-slotting)
	(diameter 2.0)
	(length 2.0)
	(number-of-teeth 4)
	(life-cycle 180)
	(cost 30.000))
)

(assert (cutting-condition 	
    	(process slab-milling)
		(part-material CarbonSteel)
		(tool-material Hss)
		(tool-diameter 10.0)
		(speed 300)
		(feed 0.003)
        ))

(assert (cutting-condition 	
    	(process end-milling-slotting)
		(part-material CarbonSteel)
		(tool-material Hss)
		(tool-diameter 2.0)
		(speed 300)
		(feed 0.003)
        ))

(assert (tool
	(name T1200)
	(material Hss)
	(for-process side-milling)
	(diameter 10.0)
        (width 4.0)
	(length 2.0)
	(life-cycle 180)
	(cost 30.000))
)

(assert (tool
	(name T1250)
	(material Hss)
	(for-process end-milling-slotting)
	(diameter 4.0)
	(length 2.0)
	(number-of-teeth 4)
	(life-cycle 180)
	(cost 30.000))
)

(assert (cutting-condition 	
    	(process slab-milling)
		(part-material CarbonSteel)
		(tool-material Hss)
		(tool-diameter 10.0)
		(speed 300)
		(feed 0.003)
        ))

(assert (cutting-condition 	
    	(process end-milling-slotting)
		(part-material CarbonSteel)
		(tool-material Hss)
		(tool-diameter 4.0)
		(speed 300)
		(feed 0.003)
        ))

(assert (tool
	(name T1100)
	(material Hss)
	(for-process side-milling)
	(diameter 10.0)
        (width 5.0)
	(length 2.0)
	(life-cycle 180)
	(cost 30.000))
)

(assert (tool
	(name T1150)
	(material Hss)
	(for-process end-milling-slotting)
	(diameter 5.0)
	(length 2.0)
	(number-of-teeth 4)
	(life-cycle 180)
	(cost 30.000))
)

(assert (cutting-condition 	
    	(process slab-milling)
		(part-material CarbonSteel)
		(tool-material Hss)
		(tool-diameter 10.0)
		(speed 300)
		(feed 0.003)
        ))

(assert (cutting-condition 	
    	(process end-milling-slotting)
		(part-material CarbonSteel)
		(tool-material Hss)
		(tool-diameter 5.0)
		(speed 300)
		(feed 0.003)
        ))


(assert (cutting-condition 	
    	(process end-milling-peripheral)
		(part-material CarbonSteel)
		(tool-material Hss)
		(tool-diameter 1.5)
		(speed 170.0)
		(feed 0.006)
        ))

(assert (cutting-condition 	
    	(process slab-milling)
		(part-material CarbonSteel)
		(tool-material Hss)
		(tool-diameter 1.0)
		(speed 300)
		(feed 0.003)
        ))

(assert (cutting-condition 	
    	(process end-milling-slotting)
		(part-material CarbonSteel)
		(tool-material Hss)
		(tool-diameter 3.0)
		(speed 300)
		(feed 0.003)
        ))

(assert (cutting-condition 	
    	(process end-milling-slotting)
		(part-material CarbonSteel)
		(tool-material Hss)
		(tool-diameter 1.0)
		(speed 300)
		(feed 0.003)
        ))


(assert (cutting-condition 	
    	(process drilling)
		(part-material CarbonSteel)
		(tool-material Hss)
		(tool-diameter 1.0)
		(speed 300)
		(feed 0.003)
        ))
        
 (assert (cutting-condition 	
    	(process drilling)
		(part-material CarbonSteel)
		(tool-material Hss)
		(tool-diameter 1.5)
		(speed 300)
		(feed 0.003)
        ))
 
; rest of data are created by Gowry fro aes94 example

(assert (tool
    (name T470)
    (material Hss)
    (for-process drilling)
    (diameter 2.5)
    (length 5.0)
    (life-cycle 180)
	(cost 30.000))
)

(assert (tool
	(name T640)
	(material Hss)
	(for-process side-milling)
	(diameter 1.0)
        (width 1.5)
	(length 2.0)
	(life-cycle 180)
	(cost 30.000))
)

(assert (tool
	(name T1460)
	(material Hss)
	(for-process end-milling-slotting)
	(diameter 1.5)
	(length 2.0)
	(number-of-teeth 4)
	(life-cycle 180)
	(cost 30.000))
)

(assert (cutting-condition 	
    	(process slab-milling)
		(part-material Aluminum)
		(tool-material Hss)
		(tool-diameter 10.0)
		(speed 600)
		(feed 0.007)
        ))

(assert (cutting-condition 	
    	(process end-milling-slotting)
		(part-material Aluminum)
		(tool-material Hss)
		(tool-diameter 2.5)
		(speed 450)
		(feed 0.012)
        ))
(assert (cutting-condition 	
    	(process end-milling-slotting)
		(part-material Aluminum)
		(tool-material Hss)
		(tool-diameter 1.5)
		(speed 450)
		(feed 0.012)
        ))

(assert (cutting-condition 	
    	(process slab-milling)
		(part-material CarbonSteel)
		(tool-material Hss)
		(tool-diameter 10.0)
		(speed 300)
		(feed 0.003)
        ))

(assert (cutting-condition 	
    	(process end-milling-slotting)
		(part-material CarbonSteel)
		(tool-material Hss)
		(tool-diameter 2.0)
		(speed 300)
		(feed 0.003)
        ))

(assert (cutting-condition 	
    	(process slab-milling)
		(part-material Aluminum)
		(tool-material Hss)
		(tool-diameter 10.0)
		(speed 1100)
		(feed 0.005)
        ))

(assert (cutting-condition 	
    	(process end-milling-peripheral)
		(part-material Aluminum)
		(tool-material Hss)
		(tool-diameter 1.5)
		(speed 800)
		(feed 0.01)
        ))

(assert (cutting-condition 	
    	(process end-milling-slotting)
		(part-material Aluminum)
		(tool-material Hss)
		(tool-diameter 2.0)
		(speed 450)
		(feed 0.012)
        ))

(assert (cutting-condition 	
    	(process drilling)
		(part-material Aluminum)
		(tool-material Hss)
		(tool-diameter 1.0)
		(speed 600)
		(feed 0.016)
        ))
        
(assert (cutting-condition 	
    	(process drilling)
		(part-material Aluminum)
		(tool-material Hss)
		(tool-diameter 1.5)
		(speed 550)
		(feed 0.016)
        ))

(assert (cutting-condition 	
    	(process drilling)
		(part-material Aluminum)
		(tool-material Hss)
		(tool-diameter 2.5)
		(speed 450)
		(feed 0.016)
        ))


(provide scfdemo04-mdata)