
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
	(tool-list T460 T520 T530 T540 T550 T560 T410 T420 T320  T620 T630 T1400)
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
 
; Tools for drilling process

(assert (tool
    (name T460)
    (material Hss)
    (for-process drilling)
    (diameter 0.785)
    (length 1.0)
    (life-cycle 180)
	(cost 30.000))
)


(assert (tool
	(name T520)
	(material Hss)
	(for-process drilling)
	(diameter 0.630)
	(length 1.0)
	(life-cycle 180)
	(cost 30.000))
)

(assert (tool
	(name T530)
	(material Hss)
	(for-process drilling)
	(diameter 0.136)
	(length 1.0)
	(life-cycle 180)
	(cost 30.000))
)


(assert (tool
	(name T540)
	(material Hss)
	(for-process drilling)
	(diameter 0.089)
	(length 1.0)
	(life-cycle 180)
	(cost 30.000))
)



(assert (tool
	(name T550)
	(material Hss)
	(for-process drilling)
	(diameter 0.250)
	(length 1.0)
	(life-cycle 180)
	(cost 30.000))
)

(assert (tool
	(name T560)
	(material Hss)
	(for-process drilling)
	(diameter 0.125)
	(length 1.0)
	(life-cycle 180)
	(cost 30.000))
)
; Tools for end-millin-slotting
 
(assert (tool
	(name T410)
	(material Hss)
	(for-process end-milling-slotting)
	(diameter 0.625)
	(length 1.7)
	(number-of-teeth 4)
	(life-cycle 180)
	(cost 30.000))
)




(assert (tool
	(name T420)
	(material Hss)
	(for-process end-milling-slotting)
	(diameter 0.875)
	(length 1.455)
	(number-of-teeth 4)
	(life-cycle 180)
	(cost 30.000))
)





;Tools for end-millig Perifpheral




(assert (tool
	(name T320)
	(material Hss)
	(for-process end-milling-peripheral)
	(diameter 2.0)
	(length 4.0)
	(number-of-teeth 4)
    (life-cycle 240)
	(cost 25.000))
)

; tools for side-milling

(assert (tool
	(name T620)
	(material Hss)
	(for-process side-milling)
	(diameter 2)
        (width 0.625)
	(length 2.5)
        	(number-of-teeth 12)
        
	(life-cycle 180)
	(cost 30.000))
)

(assert (tool
	(name T630)
	(material Hss)
	(for-process side-milling)
	(diameter 2)
        (width 0.875)
	(length 2.5)
        	(number-of-teeth 12)
        
	(life-cycle 180)
	(cost 30.000))
)


(assert (tool
	(name T1400)
	(material Hss)
	(for-process side-milling)
	(diameter 2.0)
        (width 0.440)
        	(number-of-teeth 12)
        
	(length 0.625)
	(life-cycle 180)
	(cost 30.000))
)



(assert (cutting-condition 	
    	(process drilling)
		(part-material CarbonSteel)
		(tool-material Hss)
		(tool-diameter 0.785)
		(speed 300)
		(feed 0.003)
        ))

(assert (cutting-condition 	
    	(process drilling)
		(part-material CarbonSteel)
		(tool-material Hss)
		(tool-diameter 0.630)
		(speed 300)
		(feed 0.003)
        ))


(assert (cutting-condition 	
    	(process drilling)
		(part-material CarbonSteel)
		(tool-material Hss)
		(tool-diameter 0.136)
		(speed 300)
		(feed 0.003)
        ))


(assert (cutting-condition 	
    	(process drilling)
		(part-material CarbonSteel)
		(tool-material Hss)
		(tool-diameter 0.089)
		(speed 300)
		(feed 0.003)
        ))


(assert (cutting-condition 	
    	(process drilling)
		(part-material CarbonSteel)
		(tool-material Hss)
		(tool-diameter 0.136)
		(speed 300)
		(feed 0.003)
        ))

(assert (cutting-condition 	
    	(process drilling)
		(part-material CarbonSteel)
		(tool-material Hss)
		(tool-diameter 0.250)
		(speed 300)
		(feed 0.003)
        ))
(assert (cutting-condition 	
    	(process drilling)
		(part-material CarbonSteel)
		(tool-material Hss)
		(tool-diameter 0.125)
		(speed 300)
		(feed 0.003)
        ))

(assert (cutting-condition 	
    	(process end-milling-slotting)
		(part-material CarbonSteel)
		(tool-material Hss)
		(tool-diameter 0.625)
		(speed 300)
		(feed 0.003)
        ))


(assert (cutting-condition 	
    	(process end-milling-slotting)
		(part-material CarbonSteel)
		(tool-material Hss)
		(tool-diameter 0.875)
		(speed 300)
		(feed 0.003)
        ))

(assert (cutting-condition 	
    	(process slab-milling)
		(part-material CarbonSteel)
		(tool-material Hss)
		(tool-diameter 2.0)
		(speed 300)
		(feed 0.003)
        ))

(assert (cutting-condition 	
    	(process end-milling-peripheral)
		(part-material CarbonSteel)
		(tool-material Hss)
		(tool-diameter 2.0)
		(speed 800)
		(feed 0.01)
        ))