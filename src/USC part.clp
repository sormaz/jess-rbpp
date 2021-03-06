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

;;;----------------------------Tool Material HSS -----------------------;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;       Drilling         ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(assert (tool
    (name T110)
    (material Hss)
    (for-process drilling)
    (diameter 2.25)
    (length 20)
    (life-cycle 180)
	(cost 30.000))
)


(assert (cutting-condition 	
    	(process drilling)
		(part-material CarbonSteel)
		(tool-material Hss)
		(tool-diameter 2.25)
		(speed 30)
		(feed 0.017)
        ))

(assert (cutting-condition 	
    	(process drilling)
		(part-material Aluminum)
		(tool-material Hss)
		(tool-diameter 2.25)
		(speed 250)
		(feed 0.017)
        ))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Slot ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;        

(assert (tool
	(name T210)
	(material Hss)
	(for-process end-milling-slotting)
	(diameter 2.25)
        (length 10)
	(number-of-teeth 4)
	(life-cycle 180)
	(cost 30.000))
)


(assert (tool
	(name T220)
	(material Hss)
	(for-process side-milling)
	(diameter 5.0)
        (width 2.25)
	(length 2.0)
	(life-cycle 180)
	(cost 30.000))
)


(assert (cutting-condition 	
    	(process end-milling-slotting)
		(part-material CarbonSteel)
		(tool-material Hss)
		(tool-diameter 2.25)
		(speed 70)
		(feed 0.006)
        ))

(assert (cutting-condition 	
    	(process end-milling-slotting)
		(part-material Aluminum)
		(tool-material Hss)
		(tool-diameter 2.25)
		(speed 60)
		(feed 0.007)
        ))



(assert (cutting-condition 	
    	(process side-milling)
		(part-material CarbonSteel)
		(tool-material Hss)
		(tool-diameter 5.0)
		(speed 750)
		(feed 0.03)
        ))


(assert (cutting-condition 	
    	(process side-milling)
		(part-material Aluminum)
		(tool-material Hss)
		(tool-diameter 5.0)
		(speed 750)
		(feed 0.02)
        ))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Pocket   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(assert (tool
	(name T310)
	(material Hss)
	(for-process end-milling-peripheral)
	(diameter 1.0)
	(length 5.0)
	(life-cycle 240)
	(cost 25.000))
)


(assert (tool
	(name T320)
	(material Hss)
	(for-process end-milling-peripheral)
	(diameter 1.0)
	(length 10.0)
	(life-cycle 240)
	(cost 25.000))
)

(assert (tool
	(name T330)
	(material Hss)
	(for-process end-milling-peripheral)
	(diameter 1.0)
	(length 15.0)
	(life-cycle 240)
	(cost 25.000))
)


(assert (cutting-condition 	
    	(process end-milling-peripheral)
		(part-material CarbonSteel)
		(tool-material Hss)
		(tool-diameter 1.0)
		(speed 70)
		(feed 0.006)
        ))

(assert (cutting-condition 	
    	(process end-milling-peripheral)
		(part-material Aluminum)
		(tool-material Hss)
		(tool-diameter 1.0)
		(speed 750)
		(feed 0.03)
        ))


;;;----------------------------Tool Carbide -----------------------;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;       Drilling         ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(assert (tool
    (name T510)
    (material Carbide)
    (for-process drilling)
    (diameter 2.25)
    (length 20)
    (life-cycle 180)
	(cost 30.000))
)


(assert (cutting-condition 	
    	(process drilling)
		(part-material CarbonSteel)
		(tool-material Carbide)
		(tool-diameter 2.25)
		(speed 180)
		(feed 0.018)
        ))

(assert (cutting-condition 	
    	(process drilling)
		(part-material Aluminum)
		(tool-material Carbide)
		(tool-diameter 2.25)
		(speed 300)
		(feed 0.019)
        ))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Slot ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;        

(assert (tool
	(name T610)
	(material Carbide)
	(for-process end-milling-slotting)
	(diameter 2.25)
        (length 10)
	(number-of-teeth 4)
	(life-cycle 180)
	(cost 30.000))
)


(assert (tool
	(name T620)
	(material Carbide)
	(for-process side-milling)
	(diameter 5.0)
        (width 2.25)
	(length 2.0)
	(life-cycle 180)
	(cost 30.000))
)


(assert (cutting-condition 	
    	(process end-milling-slotting)
		(part-material CarbonSteel)
		(tool-material Carbide)
		(tool-diameter 2.25)
		(speed 375)
		(feed 0.007)
        ))

(assert (cutting-condition 	
    	(process end-milling-slotting)
		(part-material Aluminum)
		(tool-material Carbide)
		(tool-diameter 2.25)
		(speed 2000)
		(feed 0.009)
        ))



(assert (cutting-condition 	
    	(process side-milling)
		(part-material CarbonSteel)
		(tool-material Carbide)
		(tool-diameter 5.0)
		(speed 375)
		(feed 0.008)
        ))


(assert (cutting-condition 	
    	(process side-milling)
		(part-material Aluminum)
		(tool-material Carbide)
		(tool-diameter 5.0)
		(speed 2000)
		(feed 0.02)
        ))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Pocket   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(assert (tool
	(name T710)
	(material Carbide)
	(for-process end-milling-peripheral)
	(diameter 1.0)
	(length 5.0)
	(life-cycle 240)
	(cost 25.000))
)


(assert (tool
	(name T720)
	(material Carbide)
	(for-process end-milling-peripheral)
	(diameter 1.0)
	(length 10.0)
	(life-cycle 240)
	(cost 25.000))
)

(assert (tool
	(name T730)
	(material Carbide)
	(for-process end-milling-peripheral)
	(diameter 1.0)
	(length 15.0)
	(life-cycle 240)
	(cost 25.000))
)


(assert (cutting-condition 	
    	(process end-milling-peripheral)
		(part-material CarbonSteel)
		(tool-material Carbide)
		(tool-diameter 1.0)
		(speed 375)
		(feed 0.007)
        ))

(assert (cutting-condition 	
    	(process end-milling-peripheral)
		(part-material Aluminum)
		(tool-material Carbide)
		(tool-diameter 1.0)
		(speed 2000)
		(feed 0.009)
        ))











(provide aes94_mdata)

