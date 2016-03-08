;(in-package : ops)
(require rbpp-init)


;;;;;;;;;------------------------------Tool Material HSS ---------------------;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;       Drilling         ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(assert (tool
    (name T101)
    (material Hss)
    (for-process drilling)
    (diameter 0.136)
    (length 5.0)
    (life-cycle 180)
	(cost 30.000))
)


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
    (diameter 0.785)
    (length 5.0)
    (life-cycle 180)
	(cost 30.000))
)

(assert (tool
    (name T104)
    (material Hss)
    (for-process drilling)
    (diameter 0.630)
    (length 5.0)
    (life-cycle 180)
	(cost 30.000))
)
(assert (tool
    (name T105)
    (material Hss)
    (for-process drilling)
    (diameter 0.089)
    (length 5.0)
    (life-cycle 180)
	(cost 30.000))
)

(assert (tool
    (name T106)
    (material Hss)
    (for-process drilling)
    (diameter 0.125)
    (length 5.0)
    (life-cycle 180)
	(cost 30.000))
)

(assert (tool
	(name T107)
	(material Hss)
	(for-process drilling)
	(diameter 1.0)
	(length 10.0)
	(life-cycle 180)
	(cost 30.000))
)


(assert (tool
    (name T108)
    (material Hss)
    (for-process drilling)
    (diameter 2.5)
    (length 5.0)
    (life-cycle 180)
    (cost 30.000))
)


(assert (tool
    (name T109)
    (material Hss)
    (for-process drilling)
    (diameter 0.5)
    (length 5.0)
    (life-cycle 180)
    (cost 30.000))
)

(assert (tool
    (name T110)
    (material Hss)
    (for-process drilling)
    (diameter 2.25)
    (length 20)
    (life-cycle 180)
	(cost 30.000))
)


(assert (tool
    (name T111)
    (material Hss)
    (for-process drilling)
    (diameter 2.0)
    (length 5.0)
    (life-cycle 180)
	(cost 30.000))
)


(assert (tool
    (name T112)
    (material Hss)
    (for-process drilling)
    (diameter 1.5)
    (length 5.0)
    (life-cycle 180)
	(cost 30.000))
)

(assert (cutting-condition 	
    	(process drilling)
		(part-material CarbonSteel)
		(tool-material Hss)
		(tool-diameter 0.136)
		(speed 30)
		(feed 0.004)
        ))

(assert (cutting-condition 	
    	(process drilling)
		(part-material Aluminum)
		(tool-material Hss)
		(tool-diameter 0.136)
		(speed 250)
		(feed 0.004)
        ))


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
		(tool-diameter 0.785)
		(speed 30)
		(feed 0.010)
        ))

(assert (cutting-condition 	
    	(process drilling)
		(part-material Aluminum)
		(tool-material Hss)
		(tool-diameter 0.785)
		(speed 250)
		(feed 0.010)
        ))
(assert (cutting-condition 	
    	(process drilling)
		(part-material CarbonSteel)
		(tool-material Hss)
		(tool-diameter 0.630)
		(speed 30)
		(feed 0.010)
        ))

(assert (cutting-condition 	
    	(process drilling)
		(part-material Aluminum)
		(tool-material Hss)
		(tool-diameter 0.630)
		(speed 250)
		(feed 0.010)
        ))
(assert (cutting-condition 	
    	(process drilling)
		(part-material CarbonSteel)
		(tool-material Hss)
		(tool-diameter 0.089)
		(speed 30)
		(feed 0.002)
        ))

(assert (cutting-condition 	
    	(process drilling)
		(part-material Aluminum)
		(tool-material Hss)
		(tool-diameter 0.089)
		(speed 250)
		(feed 0.002)
        ))

(assert (cutting-condition 	
    	(process drilling)
		(part-material CarbonSteel)
		(tool-material Hss)
		(tool-diameter 0.125)
		(speed 30)
		(feed 0.004)
        ))

(assert (cutting-condition 	
    	(process drilling)
		(part-material Aluminum)
		(tool-material Hss)
		(tool-diameter 0.125)
		(speed 250)
		(feed 0.004)
        ))


(assert (cutting-condition 	
    	(process drilling)
		(part-material CarbonSteel)
		(tool-material Hss)
		(tool-diameter 1.0)
		(speed 30)
		(feed 0.017)
        ))

(assert (cutting-condition 	
    	(process drilling)
		(part-material Aluminum)
		(tool-material Hss)
		(tool-diameter 1.0)
		(speed 250)
		(feed 0.017)
        ))
        
 (assert (cutting-condition 	
    	(process drilling)
		(part-material CarbonSteel)
		(tool-material Hss)
		(tool-diameter 2.5)
		(speed 30)
		(feed 0.017)
        ))
 
(assert (cutting-condition 	
    	(process drilling)
		(part-material Aluminum)
		(tool-material Hss)
		(tool-diameter 2.5)
		(speed 250)
		(feed 0.017)
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


(assert (cutting-condition 	
    	(process drilling)
		(part-material CarbonSteel)
		(tool-material Hss)
		(tool-diameter 2.0)
		(speed 30)
		(feed 0.017)
        ))

(assert (cutting-condition 	
    	(process drilling)
		(part-material Aluminum)
		(tool-material Hss)
		(tool-diameter 2.0)
		(speed 250)
		(feed 0.017)
        ))

(assert (cutting-condition 	
    	(process drilling)
		(part-material CarbonSteel)
		(tool-material Hss)
		(tool-diameter 1.5)
		(speed 30)
		(feed 0.017)
        ))

(assert (cutting-condition 	
    	(process drilling)
		(part-material Aluminum)
		(tool-material Hss)
		(tool-diameter 1.5)
		(speed 250)
		(feed 0.017)
        ))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Slot ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;        

(assert (tool
	(name T201)
	(material Hss)
	(for-process end-milling-slotting)
	(diameter 0.625)
        (length 10)
	(width 0.625)
	(number-of-teeth 4)
	(life-cycle 180)
	(cost 30.000))
)


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


(assert (tool
	(name T203)
	(material Hss)
	(for-process end-milling-slotting)
	(diameter 0.875)
        (length 10)
	(number-of-teeth 4)
	(width 0.875)
	(life-cycle 180)
	(cost 30.000))
)


(assert (tool
	(name T204)
	(material Hss)
	(for-process side-milling)
	(diameter 5.0)
        (width 0.875)
	(length 10.0)
	(life-cycle 180)
	(cost 30.000))
)

(assert (tool
	(name T205)
	(material Hss)
	(for-process end-milling-slotting)
	(diameter 2.0)
    	(length 10.0)
	(number-of-teeth 4)
	(life-cycle 180)
	(cost 30.000))
)


(assert (tool
	(name T206)
	(material Hss)
	(for-process side-milling)
	(diameter 5.0)
        (width 2.0)
	(length 10.0)
	(life-cycle 180)
	(cost 30.000))
)


(assert (tool
	(name T207)
	(material Hss)
	(for-process end-milling-slotting)
	(diameter 2.5)
    	(length 10.0)
	(number-of-teeth 4)
	(life-cycle 180)
	(cost 30.000))
)


(assert (tool
	(name T208)
	(material Hss)
	(for-process side-milling)
	(diameter 5.0)
        (width 2.5)
	(length 10.0)
	(life-cycle 180)
	(cost 30.000))
)




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
	(diameter 10.0)
        (width 1.5)
	(length 10.0)
	(life-cycle 180)
	(cost 30.000))
)




(assert (tool
	(name T211)
	(material Hss)
	(for-process end-milling-slotting)
	(diameter 0.5)
        (length 10.0)
	(number-of-teeth 4)
	(life-cycle 180)
	(cost 30.000))
)



(assert (tool
	(name T212)
	(material Hss)
	(for-process side-milling)
	(diameter 5.0)
        (width 0.5)
	(length 10.0)
	(life-cycle 180)
	(cost 30.000))
)

(assert (tool
	(name T213)
	(material Hss)
	(for-process end-milling-slotting)
	(diameter 2.25)
        (length 10)
	(number-of-teeth 4)
	(life-cycle 180)
	(cost 30.000))
)


(assert (tool
	(name T214)
	(material Hss)
	(for-process side-milling)
	(diameter 5.0)
        (width 2.25)
	(length 10.0)
	(life-cycle 180)
	(cost 30.000))
)

(assert (tool
	(name T215)
	(material Hss)
	(for-process end-milling-slotting)
	(diameter 6.0)
        (length 10)
	(number-of-teeth 4)
	(life-cycle 180)
	(cost 30.000))
)


(assert (tool
	(name T216)
	(material Hss)
	(for-process side-milling)
	(diameter 5.0)
        (width 6.0)
	(length 10.0)
	(life-cycle 180)
	(cost 30.000))
)

(assert (tool
	(name T217)
	(material Hss)
	(for-process end-milling-slotting)
	(diameter 5.0)
        (length 10)
	(number-of-teeth 4)
	(life-cycle 180)
	(cost 30.000))
)


(assert (tool
	(name T218)
	(material Hss)
	(for-process side-milling)
	(diameter 10.0)
        (width 5.0)
	(length 10)
	(life-cycle 180)
	(cost 30.000))
)

(assert (tool
	(name T219)
	(material Hss)
	(for-process end-milling-slotting)
	(diameter 1.0)
        (length 10)
	(number-of-teeth 4)
	(life-cycle 180)
	(cost 30.000))
)

(assert (cutting-condition 	
    	(process end-milling-slotting)
		(part-material CarbonSteel)
		(tool-material Hss)
		(tool-diameter 0.625)
		(speed 70)
		(feed 0.006)
        ))

(assert (cutting-condition 	
    	(process end-milling-slotting)
		(part-material Aluminum)
		(tool-material Hss)
		(tool-diameter 0.625)
		(speed 750)
		(feed 0.03)
        ))




(assert (cutting-condition 	
    	(process end-milling-slotting)
		(part-material CarbonSteel)
		(tool-material Hss)
		(tool-diameter 0.875)
		(speed 70)
		(feed 0.006)
        ))

(assert (cutting-condition 	
    	(process end-milling-slotting)
		(part-material Aluminum)
		(tool-material Hss)
		(tool-diameter 0.875)
		(speed 750)
		(feed 0.03)
        ))

(assert (cutting-condition 	
    	(process side-milling)
		(part-material CarbonSteel)
		(tool-material Hss)
		(tool-diameter 5.0)
		(speed 60)
		(feed 0.007)
        ))

(assert (cutting-condition 	
    	(process side-milling)
		(part-material Aluminum)
		(tool-material Hss)
		(tool-diameter 5.0)
		(speed 750)
		(feed 0.02)
        ))

(assert (cutting-condition 	
    	(process end-milling-slotting)
		(part-material CarbonSteel)
		(tool-material Hss)
		(tool-diameter 2.0)
		(speed 70)
		(feed 0.006)
        ))

(assert (cutting-condition 	
    	(process end-milling-slotting)
		(part-material Aluminum)
		(tool-material Hss)
		(tool-diameter 2.0)
		(speed 750)
		(feed 0.03)
        ))

(assert (cutting-condition 	
    	(process end-milling-slotting)
		(part-material CarbonSteel)
		(tool-material Hss)
		(tool-diameter 2.5)
		(speed 70)
		(feed 0.006)
        ))

(assert (cutting-condition 	
    	(process end-milling-slotting)
		(part-material Aluminum)
		(tool-material Hss)
		(tool-diameter 2.5)
		(speed 750)
		(feed 0.03)
        ))

(assert (cutting-condition 	
    	(process end-milling-slotting)
		(part-material CarbonSteel)
		(tool-material Hss)
		(tool-diameter 1.5)
		(speed 70)
		(feed 0.006)
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
		(tool-diameter 10.0)
		(speed 60)
		(feed 0.007)
        ))

(assert (cutting-condition 	
    	(process side-milling)
		(part-material Aluminum)
		(tool-material Hss)
		(tool-diameter 10.0)
		(speed 750)
		(feed 0.02)
        ))

(assert (cutting-condition 	
    	(process end-milling-slotting)
		(part-material CarbonSteel)
		(tool-material Hss)
		(tool-diameter 0.5)
		(speed 70)
		(feed 0.006)
        ))

(assert (cutting-condition 	
    	(process end-milling-slotting)
		(part-material Aluminum)
		(tool-material Hss)
		(tool-diameter 0.5)
		(speed 60)
		(feed 0.007)
        ))

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
    	(process end-milling-slotting)
		(part-material CarbonSteel)
		(tool-material Hss)
		(tool-diameter 6.0)
		(speed 70)
		(feed 0.006)
        ))

(assert (cutting-condition 	
    	(process end-milling-slotting)
		(part-material Aluminum)
		(tool-material Hss)
		(tool-diameter 6.0)
		(speed 750)
		(feed 0.03)
        ))

(assert (cutting-condition 	
    	(process end-milling-slotting)
		(part-material CarbonSteel)
		(tool-material Hss)
		(tool-diameter 5.0)
		(speed 70)
		(feed 0.006)
        ))

(assert (cutting-condition 	
    	(process end-milling-slotting)
		(part-material Aluminum)
		(tool-material Hss)
		(tool-diameter 5.0)
		(speed 750)
		(feed 0.03)
        ))

(assert (cutting-condition 	
    	(process end-milling-slotting)
		(part-material CarbonSteel)
		(tool-material Hss)
		(tool-diameter 1.0)
		(speed 70)
		(feed 0.006)
        ))

(assert (cutting-condition 	
    	(process end-milling-slotting)
		(part-material Aluminum)
		(tool-material Hss)
		(tool-diameter 1.0)
		(speed 750)
		(feed 0.03)
        ))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Pocket   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;




(assert (tool
	(name T301)
	(material HSS)
	(for-process end-milling-peripheral)
	(diameter 1.5)
	(length 10.0)
	(life-cycle 240)
	(cost 25.000))
)




(assert (tool
	(name T302)
	(material Hss)
	(for-process end-milling-peripheral)
	(diameter 1.0)
	(length 15.0)
	(life-cycle 240)
	(cost 25.000))
)

(assert (tool
	(name T303)
	(material Hss)
	(for-process end-milling-peripheral)
	(diameter 0.5)
	(length 5.0)
	(life-cycle 240)
	(cost 25.000))
)

(assert (tool
	(name T304)
	(material Hss)
	(for-process end-milling-peripheral)
	(diameter 2.0)
	(length 5.0)
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
		(feed 0.03)
        ))


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

(assert (cutting-condition 	
    	(process end-milling-peripheral)
		(part-material CarbonSteel)
		(tool-material Hss)
		(tool-diameter 0.5)
		(speed 70)
		(feed 0.006)
        ))

(assert (cutting-condition 	
    	(process end-milling-peripheral)
		(part-material Aluminum)
		(tool-material Hss)
		(tool-diameter 0.5)
		(speed 750)
		(feed 0.02)
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
		(feed 0.03)
        ))
;;;;;;;;;------------------------------Tool Carbide ---------------------;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;       Drilling         ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;





(assert (tool
    (name T501)
    (material Carbide)
    (for-process drilling)
    (diameter 0.136)
    (length 1.7)
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

(assert (tool
    (name T503)
    (material Carbide)
    (for-process drilling)
    (diameter 0.785)
    (length 1.0)
    (life-cycle 180)
	(cost 30.000))
)

(assert (tool
    (name T504)
    (material Carbide)
    (for-process drilling)
    (diameter 0.630)
    (length 1.0)
    (life-cycle 180)
	(cost 30.000))
)
(assert (tool
    (name T505)
    (material Carbide)
    (for-process drilling)
    (diameter 0.089)
    (length 1.455)
    (life-cycle 180)
	(cost 30.000))
)

(assert (tool
    (name T506)
    (material Carbide)
    (for-process drilling)
    (diameter 0.125)
    (length 1.455)
    (life-cycle 180)
	(cost 30.000))
)

(assert (tool
	(name T507)
	(material Carbide)
	(for-process drilling)
	(diameter 1.0)
	(length 10.0)
	(life-cycle 180)
	(cost 30.000))
)


(assert (tool
    (name T508)
    (material Carbide)
    (for-process drilling)
    (diameter 2.5)
    (length 5.0)
    (life-cycle 180)
	(cost 30.000))
)

(assert (tool
    (name T509)
    (material Carbide)
    (for-process drilling)
    (diameter 0.5)
    (length 0.25)
    (life-cycle 180)
	(cost 30.000))
)

(assert (tool
    (name T510)
    (material Carbide)
    (for-process drilling)
    (diameter 2.25)
    (length 20)
    (life-cycle 180)
	(cost 30.000))
)

(assert (tool
    (name T511)
    (material Carbide)
    (for-process drilling)
    (diameter 2.0)
    (length 3.0)
    (life-cycle 180)
	(cost 30.000))
)

(assert (tool
    (name T512)
    (material Carbide)
    (for-process drilling)
    (diameter 1.5)
    (length 5.0)
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
		(tool-diameter 0.785)
		(speed 180)
		(feed 0.010)
        ))

(assert (cutting-condition 	
    	(process drilling)
		(part-material Aluminum)
		(tool-material Carbide)
		(tool-diameter 0.785)
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


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Slot ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;        

(assert (tool
	(name T601)
	(material Carbide)
	(for-process end-milling-slotting)
	(diameter 4)
        (length 10)
	(width 0.625)
	(number-of-teeth 4)
	(life-cycle 180)
	(cost 30.000))
)


(assert (tool
	(name T602)
	(material Carbide)
	(for-process side-milling)
	(diameter 5.0)
        (width 0.625)
	(length 2.0)
	(life-cycle 180)
	(cost 30.000))
)


(assert (tool
	(name T603)
	(material Carbide)
	(for-process end-milling-slotting)
	(diameter 0.875)
        (length 10)
	(number-of-teeth 4)
	(width 0.875)
	(life-cycle 180)
	(cost 30.000))
)


(assert (tool
	(name T604)
	(material Carbide)
	(for-process side-milling)
	(diameter 5.0)
        (width 0.875)
	(length 2.0)
	(life-cycle 180)
	(cost 30.000))
)

(assert (tool
	(name T605)
	(material Carbide)
	(for-process end-milling-slotting)
	(diameter 2.0)
    	(length 5.0)
	(number-of-teeth 4)
	(life-cycle 180)
	(cost 30.000))
)


(assert (tool
	(name T606)
	(material Carbide)
	(for-process side-milling)
	(diameter 5.0)
        (width 2.0)
	(length 2.0)
	(life-cycle 180)
	(cost 30.000))
)


(assert (tool
	(name T607)
	(material Carbide)
	(for-process end-milling-slotting)
	(diameter 2.5)
    	(length 5.0)
	(number-of-teeth 4)
	(life-cycle 180)
	(cost 30.000))
)


(assert (tool
	(name T608)
	(material Carbide)
	(for-process side-milling)
	(diameter 5.0)
        (width 2.5)
	(length 2.0)
	(life-cycle 180)
	(cost 30.000))
)

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

(assert (tool
	(name T611)
	(material Carbide)
	(for-process end-milling-slotting)
	(diameter 0.5)
        (length 5)
	(number-of-teeth 4)
	(life-cycle 180)
	(cost 30.000))
)



(assert (tool
	(name T612)
	(material Carbide)
	(for-process side-milling)
	(diameter 5.0)
        (width 0.5)
	(length 2.0)
	(life-cycle 180)
	(cost 30.000))
)



(assert (tool
	(name T613)
	(material Carbide)
	(for-process end-milling-slotting)
	(diameter 2.25)
        (length 10)
	(number-of-teeth 4)
	(life-cycle 180)
	(cost 30.000))
)


(assert (tool
	(name T614)
	(material Carbide)
	(for-process side-milling)
	(diameter 5.0)
        (width 2.25)
	(length 2.0)
	(life-cycle 180)
	(cost 30.000))
)


(assert (tool
	(name T615)
	(material Carbide)
	(for-process end-milling-slotting)
	(diameter 6.0)
        (length 10)
	(number-of-teeth 4)
	(life-cycle 180)
	(cost 30.000))
)


(assert (tool
	(name T616)
	(material Carbide)
	(for-process side-milling)
	(diameter 5.0)
        (width 6.0)
	(length 2.0)
	(life-cycle 180)
	(cost 30.000))
)



(assert (tool
	(name T617)
	(material Carbide)
	(for-process end-milling-slotting)
	(diameter 5.0)
        (length 10)
	(number-of-teeth 4)
	(life-cycle 180)
	(cost 30.000))
)




(assert (tool
	(name T618)
	(material Carbide)
	(for-process side-milling)
	(diameter 10.0)
        (width 5.0)
	(life-cycle 180)
	(cost 30.000))
)

(assert (tool
	(name T619)
	(material Carbide)
	(for-process end-milling-slotting)
	(diameter 1.0)
        (length 10)
	(number-of-teeth 4)
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
	(name T702)
	(material Carbide)
	(for-process end-milling-peripheral)
	(diameter 1.5)
	(length 10.0)
	(life-cycle 240)
	(cost 25.000))
)




(assert (tool
	(name T702)
	(material Carbide)
	(for-process end-milling-peripheral)
	(diameter 1.0)
	(length 15.0)
	(life-cycle 240)
	(cost 25.000))
)


(assert (tool
	(name T703)
	(material Carbide)
	(for-process end-milling-peripheral)
	(diameter 0.5)
	(length 5.0)
	(life-cycle 240)
	(cost 25.000))
)


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
		(tool-diameter 1.5)
		(speed 375)
		(feed 0.007)
        ))

(assert (cutting-condition 	
    	(process end-milling-peripheral)
		(part-material Aluminum)
		(tool-material Carbide)
		(tool-diameter 1.5)
		(speed 2000)
		(feed 0.009)
        ))


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

(assert (cutting-condition 	
    	(process end-milling-peripheral)
		(part-material CarbonSteel)
		(tool-material Carbide)
		(tool-diameter 0.5)
		(speed 375)
		(feed 0.007)
        ))

(assert (cutting-condition 	
    	(process end-milling-peripheral)
		(part-material Aluminum)
		(tool-material Carbide)
		(tool-diameter 0.5)
		(speed 2000)
		(feed 0.009)
        ))

(assert (cutting-condition 	
    	(process end-milling-peripheral)
		(part-material CarbonSteel)
		(tool-material Carbide)
		(tool-diameter 2.0)
		(speed 375)
		(feed 0.007)
        ))

(assert (cutting-condition 	
    	(process end-milling-peripheral)
		(part-material Aluminum)
		(tool-material Carbide)
		(tool-diameter 2.0)
		(speed 2000)
		(feed 0.009)
        ))

;(provide aes94_mdata)

