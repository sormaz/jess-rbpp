(batch (str-cat ?*ruleFolder* "Milad-thesis/Milad-thesis-machine-data.clp"))

;(in-package : ops)
(require rbpp-init)


;;;;;;;;;------------------------------Tool Material HSS ---------------------;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;       Drilling         ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

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
	(name T117)
	(material Hss)
	(for-process drilling)
	(diameter 2.0)
	(length 10.0)
	(life-cycle 180)
	(cost 30.000))
)

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
		(tool-diameter 1.0)
		(speed 90)
		(feed 0.017)
        ))

(assert (cutting-condition 	
    	(process drilling)
		(part-material Aluminum)
		(tool-material Hss)
		(tool-diameter 1.0)
		(speed 500)
		(feed 0.017)
        ))
		
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Slot ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;        


; these two are to make slot(15) in nist example they are in MM
(assert (tool
	(name T204)
	(material Hss)
	(for-process side-milling)
	(diameter 40)
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

(assert (tool
	(name T220)
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
		(tool-diameter 4)
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
	(name T507)
	(material Carbide)
	(for-process drilling)
	(diameter 1.0)
	(length 10.0)
	(life-cycle 180)
	(cost 30.000))
)

(assert (tool
	(name T517)
	(material Carbide)
	(for-process drilling)
	(diameter 2.0)
	(length 10.0)
	(life-cycle 180)
	(cost 30.000))
)


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




