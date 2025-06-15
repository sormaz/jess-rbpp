(batch (str-cat ?*ruleFolder* "Milad-thesis/Milad-thesis-machine-data.clp"))

;(in-package : ops)
(require rbpp-init)


;;;;;;;;;------------------------------Tool Material HSS ---------------------;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;       Drilling         ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(assert (tool
    (name T102)
    (material Hss)
    (for-process drilling)
    (diameter 0.250)
    (length 5.0)
    (life-cycle 180)
	(cost 30.000))
)


(assert (tool
    (name T103)
    (material Hss)
    (for-process drilling)
    (diameter 0.50)
    (length 7.0)
    (life-cycle 180)
	(cost 30.000))
)



(assert (tool
    (name T104)
    (material Hss)
    (for-process drilling)
    (diameter 0.750)
    (length 10.0)
    (life-cycle 180)
	(cost 30.000))
)



(assert (cutting-condition 	
    	(process drilling)
		(part-material CarbonSteel)
		(tool-material Hss)
		(tool-diameter 0.250)
		(speed 30)
		(feed 0.004)
        ))

(assert (cutting-condition 	
    	(process drilling)
		(part-material Aluminum)
		(tool-material Hss)
		(tool-diameter 0.250)
		(speed 250)
		(feed 0.004)
        ))
(assert (cutting-condition 	
    	(process drilling)
		(part-material CarbonSteel)
		(tool-material Hss)
		(tool-diameter 0.750)
		(speed 30)
		(feed 0.010)
        ))

(assert (cutting-condition 	
    	(process drilling)
		(part-material Aluminum)
		(tool-material Hss)
		(tool-diameter 0.750)
		(speed 250)
		(feed 0.010)
        ))

(assert (cutting-condition 	
    	(process drilling)
		(part-material CarbonSteel)
		(tool-material Hss)
		(tool-diameter 0.5)
		(speed 30)
		(feed 0.010)
        ))

(assert (cutting-condition 	
    	(process drilling)
		(part-material Aluminum)
		(tool-material Hss)
		(tool-diameter 0.5)
		(speed 250)
		(feed 0.010)
        ))


 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Slot ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;        

(assert (tool
	(name T209)
	(material Hss)
	(for-process end-milling-slotting)
	(diameter 1.5)
    	(length 10.0)
	(number-of-teeth 4)
	(life-cycle 180)
	(cost 30.000))
)


(assert (tool
	(name T210)
	(material Hss)
	(for-process side-milling)
	(diameter 5.0)
        (width 1.5)
	(length 10.0)
	(life-cycle 180)
	(cost 30.000))
)



(assert (cutting-condition 	
    	(process end-milling-slotting)
		(part-material CarbonSteel)
		(tool-material Hss)
		(tool-diameter 1.5)
		(speed 70)
		(feed 0.06)
        ))

(assert (cutting-condition 	
    	(process end-milling-slotting)
		(part-material Aluminum)
		(tool-material Hss)
		(tool-diameter 1.5)
		(speed 750)
		(feed 0.03)
        ))

(assert (cutting-condition 	
    	(process side-milling)
		(part-material CarbonSteel)
		(tool-material Hss)
		(tool-diameter 5.0)
		(speed 60)
		(feed 0.07)
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
	(name T304)
	(material Hss)
	(for-process end-milling-peripheral)
	(diameter 2.0)
	(length 5.0)
	(life-cycle 240)
	(cost 25.000))
)

(assert (tool
	(name T305)
	(material Hss)
	(for-process end-milling-peripheral)
	(diameter 1.5)
	(length 10.0)
	(life-cycle 240)
	(cost 25.000))
)


(assert (cutting-condition 	
    	(process end-milling-peripheral)
		(part-material CarbonSteel)
		(tool-material Hss)
		(tool-diameter 1.5)
		(speed 70)
		(feed 0.006)
        ))

(assert (cutting-condition 	
    	(process end-milling-peripheral)
		(part-material Aluminum)
		(tool-material Hss)
		(tool-diameter 1.5)
		(speed 750)
		(feed 0.003)
        ))

(assert (cutting-condition 	
    	(process end-milling-peripheral)
		(part-material CarbonSteel)
		(tool-material Hss)
		(tool-diameter 2.0)
		(speed 70)
		(feed 0.006)
        ))

(assert (cutting-condition 	
    	(process end-milling-peripheral)
		(part-material Aluminum)
		(tool-material Hss)
		(tool-diameter 2.0)
		(speed 750)
		(feed 0.003)
        ))
;;;;;;;;;------------------------------Tool Carbide ---------------------;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;       Drilling         ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(assert (tool
    (name T113)
    (material Carbide)
    (for-process drilling)
    (diameter 0.50)
    (length 0.25)
    (life-cycle 180)
	(cost 30.000))
)


(assert (tool
    (name T114)
    (material Carbide)
    (for-process drilling)
    (diameter 0.750)
    (length 0.25)
    (life-cycle 180)
	(cost 30.000))
)

(assert (tool
    (name T502)
    (material Carbide)
    (for-process drilling)
    (diameter 0.250)
    (length 0.25)
    (life-cycle 180)
	(cost 30.000))
)


(assert (cutting-condition 	
    	(process drilling)
		(part-material CarbonSteel)
		(tool-material Carbide)
		(tool-diameter 0.136)
		(speed 180)
		(feed 0.003)
        ))

(assert (cutting-condition 	
    	(process drilling)
		(part-material Aluminum)
		(tool-material Carbide)
		(tool-diameter 0.136)
		(speed 300)
		(feed 0.004)
        ))


(assert (cutting-condition 	
    	(process drilling)
		(part-material CarbonSteel)
		(tool-material Carbide)
		(tool-diameter 0.250)
		(speed 180)
		(feed 0.004)
        ))

(assert (cutting-condition 	
    	(process drilling)
		(part-material Aluminum)
		(tool-material Carbide)
		(tool-diameter 0.250)
		(speed 300)
		(feed 0.005)
        ))
(assert (cutting-condition 	
    	(process drilling)
		(part-material CarbonSteel)
		(tool-material Carbide)
		(tool-diameter 0.75)
		(speed 180)
		(feed 0.010)
        ))

(assert (cutting-condition 	
    	(process drilling)
		(part-material Aluminum)
		(tool-material Carbide)
		(tool-diameter 0.75)
		(speed 300)
		(feed 0.011)
        ))
(assert (cutting-condition 	
    	(process drilling)
		(part-material CarbonSteel)
		(tool-material Carbide)
		(tool-diameter 0.630)
		(speed 180)
		(feed 0.009)
        ))

(assert (cutting-condition 	
    	(process drilling)
		(part-material Aluminum)
		(tool-material Carbide)
		(tool-diameter 0.630)
		(speed 300)
		(feed 0.010)
        ))
(assert (cutting-condition 	
    	(process drilling)
		(part-material CarbonSteel)
		(tool-material Carbide)
		(tool-diameter 0.089)
		(speed 180)
		(feed 0.002)
        ))

(assert (cutting-condition 	
    	(process drilling)
		(part-material Aluminum)
		(tool-material Carbide)
		(tool-diameter 0.089)
		(speed 300)
		(feed 0.003)
        ))

(assert (cutting-condition 	
    	(process drilling)
		(part-material CarbonSteel)
		(tool-material Carbide)
		(tool-diameter 0.125)
		(speed 180)
		(feed 0.003)
        ))

(assert (cutting-condition 	
    	(process drilling)
		(part-material Aluminum)
		(tool-material Carbide)
		(tool-diameter 0.125)
		(speed 300)
		(feed 0.002)
        ))


(assert (cutting-condition 	
    	(process drilling)
		(part-material CarbonSteel)
		(tool-material Carbide)
		(tool-diameter 1.0)
		(speed 180)
		(feed 0.013)
        ))

(assert (cutting-condition 	
    	(process drilling)
		(part-material Aluminum)
		(tool-material Carbide)
		(tool-diameter 1.0)
		(speed 300)
		(feed 0.014)
        ))
        
 (assert (cutting-condition 	
    	(process drilling)
		(part-material CarbonSteel)
		(tool-material Carbide)
		(tool-diameter 2.5)
		(speed 180)
		(feed 0.018)
        ))
 
(assert (cutting-condition 	
    	(process drilling)
		(part-material Aluminum)
		(tool-material Carbide)
		(tool-diameter 2.5)
		(speed 300)
		(feed 0.019)
        ))

(assert (cutting-condition 	
    	(process drilling)
		(part-material CarbonSteel)
		(tool-material Carbide)
		(tool-diameter 0.5)
		(speed 180)
		(feed 0.007)
        ))

(assert (cutting-condition 	
    	(process drilling)
		(part-material Aluminum)
		(tool-material Carbide)
		(tool-diameter 0.5)
		(speed 300)
		(feed 0.008)
        ))

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

(assert (cutting-condition 	
    	(process drilling)
		(part-material CarbonSteel)
		(tool-material Carbide)
		(tool-diameter 2.0)
		(speed 180)
		(feed 0.018)
        ))

(assert (cutting-condition 	
    	(process drilling)
		(part-material Aluminum)
		(tool-material Carbide)
		(tool-diameter 2.0)
		(speed 300)
		(feed 0.019)
        ))


(assert (cutting-condition 	
    	(process drilling)
		(part-material CarbonSteel)
		(tool-material Carbide)
		(tool-diameter 1.5)
		(speed 180)
		(feed 0.018)
        ))

(assert (cutting-condition 	
    	(process drilling)
		(part-material Aluminum)
		(tool-material Carbide)
		(tool-diameter 1.5)
		(speed 300)
		(feed 0.019)
        ))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Slot ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;        


(assert (tool
	(name T609)
	(material Carbide)
	(for-process end-milling-slotting)
	(diameter 1.5)
    	(length 10.0)
	(number-of-teeth 4)
	(life-cycle 180)
	(cost 30.000))
)


(assert (tool
	(name T610)
	(material Carbide)
	(for-process side-milling)
	(diameter 10.0)
        (width 1.5)
	(length 2.0)
	(life-cycle 180)
	(cost 30.000))
)

(assert (cutting-condition 	
    	(process end-milling-slotting)
		(part-material CarbonSteel)
		(tool-material Carbide)
		(tool-diameter 0.625)
		(speed 375)
		(feed 0.007)
        ))

(assert (cutting-condition 	
    	(process end-milling-slotting)
		(part-material Aluminum)
		(tool-material Carbide)
		(tool-diameter 0.625)
		(speed 2000)
		(feed 0.009)
        ))

(assert (cutting-condition 	
    	(process end-milling-slotting)
		(part-material CarbonSteel)
		(tool-material Carbide)
		(tool-diameter 0.875)
		(speed 375)
		(feed 0.007)
        ))

(assert (cutting-condition 	
    	(process end-milling-slotting)
		(part-material Aluminum)
		(tool-material Carbide)
		(tool-diameter 0.875)
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

(assert (cutting-condition 	
    	(process end-milling-slotting)
		(part-material CarbonSteel)
		(tool-material Carbide)
		(tool-diameter 2.0)
		(speed 375)
		(feed 0.007)
        ))

(assert (cutting-condition 	
    	(process end-milling-slotting)
		(part-material Aluminum)
		(tool-material Carbide)
		(tool-diameter 2.0)
		(speed 2000)
		(feed 0.009)
        ))

(assert (cutting-condition 	
    	(process end-milling-slotting)
		(part-material CarbonSteel)
		(tool-material Carbide)
		(tool-diameter 2.5)
		(speed 375)
		(feed 0.007)
        ))

(assert (cutting-condition 	
    	(process end-milling-slotting)
		(part-material Aluminum)
		(tool-material Carbide)
		(tool-diameter 2.5)
		(speed 2000)
		(feed 0.009)
        ))


(assert (cutting-condition 	
    	(process end-milling-slotting)
		(part-material CarbonSteel)
		(tool-material Carbide)
		(tool-diameter 1.5)
		(speed 375)
		(feed 0.007)
        ))

(assert (cutting-condition 	
    	(process end-milling-slotting)
		(part-material Aluminum)
		(tool-material Carbide)
		(tool-diameter 1.5)
		(speed 2000)
		(feed 0.009)
        ))

(assert (cutting-condition 	
    	(process side-milling)
		(part-material CarbonSteel)
		(tool-material Carbide)
		(tool-diameter 10.0)
		(speed 375)
		(feed 0.008)
        ))

(assert (cutting-condition 	
    	(process side-milling)
		(part-material Aluminum)
		(tool-material Carbide)
		(tool-diameter 10.0)
		(speed 2000)
		(feed 0.02)
        ))


(assert (cutting-condition 	
    	(process end-milling-slotting)
		(part-material CarbonSteel)
		(tool-material Carbide)
		(tool-diameter 0.5)
		(speed 375)
		(feed 0.007)
        ))

(assert (cutting-condition 	
    	(process end-milling-slotting)
		(part-material Aluminum)
		(tool-material Carbide)
		(tool-diameter 0.5)
		(speed 2000)
		(feed 0.009)
        ))


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
    	(process end-milling-slotting)
		(part-material CarbonSteel)
		(tool-material Carbide)
		(tool-diameter 6.0)
		(speed 375)
		(feed 0.007)
        ))

(assert (cutting-condition 	
    	(process end-milling-slotting)
		(part-material Aluminum)
		(tool-material Carbide)
		(tool-diameter 6.0)
		(speed 2000)
		(feed 0.009)
        ))

(assert (cutting-condition 	
    	(process end-milling-slotting)
		(part-material CarbonSteel)
		(tool-material Carbide)
		(tool-diameter 5.0)
		(speed 375)
		(feed 0.007)
        ))

(assert (cutting-condition 	
    	(process end-milling-slotting)
		(part-material Aluminum)
		(tool-material Carbide)
		(tool-diameter 5.0)
		(speed 2000)
		(feed 0.009)
        ))

(assert (cutting-condition 	
    	(process end-milling-slotting)
		(part-material CarbonSteel)
		(tool-material Carbide)
		(tool-diameter 1.0)
		(speed 375)
		(feed 0.007)
        ))

(assert (cutting-condition 	
    	(process end-milling-slotting)
		(part-material Aluminum)
		(tool-material Carbide)
		(tool-diameter 1.0)
		(speed 2000)
		(feed 0.009)
        ))




;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Pocket   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(assert (tool
	(name T704)
	(material Carbide)
	(for-process end-milling-peripheral)
	(diameter 2.0)
	(length 5.0)
	(life-cycle 240)
	(cost 25.000))
)

(assert (cutting-condition 	
    	(process end-milling-peripheral)
		(part-material CarbonSteel)
		(tool-material Carbide)
		(tool-diameter 2.0)
		(speed 375)
		(feed 0.0007)
        ))

(assert (cutting-condition 	
    	(process end-milling-peripheral)
		(part-material Aluminum)
		(tool-material Carbide)
		(tool-diameter 2.0)
		(speed 200)
		(feed 0.0009)
        ))


