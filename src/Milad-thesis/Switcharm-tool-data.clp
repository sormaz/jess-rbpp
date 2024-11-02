(batch (str-cat ?*ruleFolder* "Milad-thesis/Milad-thesis-machine-data.clp"))

;(in-package : ops)
(require rbpp-init)


;;;;;;;;;------------------------------Tool Material HSS ---------------------;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;       Drilling         ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(assert (tool
    (name T114)
    (material Hss)
    (for-process drilling)
    (diameter 2.5)
    (length 75.0)
    (life-cycle 180)
	(cost 30.000))
)


(assert (tool
    (name T115)
    (material Hss)
    (for-process drilling)
    (diameter 0.75)
    (length 15.0)
    (life-cycle 180)
	(cost 30.000))
)

(assert (tool
    (name T116)
    (material Hss)
    (for-process drilling)
    (diameter 1.5)
    (length 45.0)
    (life-cycle 180)
	(cost 30.000))
)

(assert (tool
    (name T117)
    (material Hss)
    (for-process drilling)
    (diameter 0.5)
    (length 45.0)
    (life-cycle 180)
	(cost 30.000))
)


(assert (cutting-condition 	
    	(process drilling)
		(part-material CarbonSteel)
		(tool-material Hss)
		(tool-diameter 2.5)
		(speed 30)
		(feed 0.004)
        ))

(assert (cutting-condition 	
    	(process drilling)
		(part-material CarbonSteel)
		(tool-material Hss)
		(tool-diameter 0.75)
		(speed 30)
		(feed 0.004)
        ))

(assert (cutting-condition 	
    	(process drilling)
		(part-material CarbonSteel)
		(tool-material Hss)
		(tool-diameter 1.5)
		(speed 30)
		(feed 0.004)
        ))

(assert (cutting-condition 	
    	(process drilling)
		(part-material CarbonSteel)
		(tool-material Hss)
		(tool-diameter 0.5)
		(speed 30)
		(feed 0.004)
        ))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Slot ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;        

(assert (tool
	(name T204)
	(material Hss)
	(for-process side-milling)
	(diameter 4.0)
        (width 4.0)
	(length 10.0)
	(life-cycle 180)
	(cost 30.000))
)

(assert (tool
	(name T205)
	(material Hss)
	(for-process end-milling-slotting)
	(diameter 4.0)
    	(length 100)
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
	(name T218)
	(material Hss)
	(for-process side-milling)
	(diameter 5.0)
        (width 3.0)
	(length 20.0)
	(life-cycle 180)
	(cost 30.000))
)


(assert (tool
	(name T219)
	(material Hss)
	(for-process side-milling)
	(diameter 5.0)
        (width 12.0)
	(length 20.0)
	(life-cycle 180)
	(cost 30.000))
)

(assert (tool
	(name T220)
	(material Hss)
	(for-process end-milling-slotting)
	(diameter 12.0)
        (length 40)
	(number-of-teeth 6)
	(life-cycle 180)
	(cost 30.000))
)

(assert (tool
	(name T221)
	(material Hss)
	(for-process end-milling-slotting)
	(diameter 3.0)
        (length 10)
	(number-of-teeth 4)
	(life-cycle 180)
	(cost 30.000))
)

(assert (cutting-condition 	
    	(process end-milling-slotting)
		(part-material CarbonSteel)
		(tool-material Hss)
		(tool-diameter 12.0)
		(speed 750)
		(feed 0.006)
        ))

(assert (cutting-condition 	
    	(process end-milling-slotting)
		(part-material CarbonSteel)
		(tool-material Hss)
		(tool-diameter 3.0)
		(speed 500)
		(feed 0.006)
        ))


(assert (cutting-condition 	
    	(process end-milling-slotting)
		(part-material CarbonSteel)
		(tool-material Hss)
		(tool-diameter 4.0)
		(speed 70)
		(feed 0.006)
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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Pocket   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;





;;;;;;;;;------------------------------Tool Carbide ---------------------;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;       Drilling         ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(assert (tool
    (name T501)
    (material Carbide)
    (for-process drilling)
    (diameter 2.5)
    (length 1.7)
    (life-cycle 180)
	(cost 30.000))
)

(assert (tool
    (name T502)
    (material Carbide)
    (for-process drilling)
    (diameter 0.75)
    (length 0.25)
    (life-cycle 180)
	(cost 30.000))
)

(assert (tool
    (name T503)
    (material Carbide)
    (for-process drilling)
    (diameter 1.5)
    (length 1.0)
    (life-cycle 180)
	(cost 30.000))
)

(assert (tool
    (name T504)
    (material Carbide)
    (for-process drilling)
    (diameter 0.5)
    (length 1.0)
    (life-cycle 180)
	(cost 30.000))
)

(assert (cutting-condition 	
    	(process drilling)
		(part-material CarbonSteel)
		(tool-material Carbide)
		(tool-diameter 2.5)
		(speed 180)
		(feed 0.003)
        ))

(assert (cutting-condition 	
    	(process drilling)
		(part-material CarbonSteel)
		(tool-material Carbide)
		(tool-diameter 0.75)
		(speed 180)
		(feed 0.003)
        ))

(assert (cutting-condition 	
    	(process drilling)
		(part-material CarbonSteel)
		(tool-material Carbide)
		(tool-diameter 1.5)
		(speed 180)
		(feed 0.003)
        ))

(assert (cutting-condition 	
    	(process drilling)
		(part-material CarbonSteel)
		(tool-material Carbide)
		(tool-diameter 0.5)
		(speed 180)
		(feed 0.003)
        ))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Slot ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;        


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
	(for-process side-milling)
	(diameter 12.0)
        (width 4.0)
	(length 4.0)
	(life-cycle 180)
	(cost 30.000))
)

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
    	(process side-milling)
		(part-material CarbonSteel)
		(tool-material Carbide)
		(tool-diameter 12.0)
		(speed 700)
		(feed 0.008)
        ))

(assert (cutting-condition 	
    	(process side-milling)
		(part-material Aluminum)
		(tool-material Carbide)
		(tool-diameter 5.0)
		(speed 3000)
		(feed 0.02)
        ))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Pocket   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

