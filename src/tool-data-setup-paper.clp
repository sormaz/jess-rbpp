;(in-package : ops)
(require rbpp-init)


;;;;;;;;;------------------------------Tool Material HSS ---------------------;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;       Drilling         ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(assert (tool
    (name T101)
    (material Hss)
    (for-process drilling)
    (diameter 60)
    (length 200)
    (life-cycle 180)
	(cost 30.000)
	))
	

(assert (cutting-condition 	
    	(process drilling)
		(part-material Aluminum)
		(tool-material Hss)
		(tool-diameter 60)
		(speed 250)
		(feed 0.017)
        ))

(assert (tool
    (name T102)
    (material Hss)
    (for-process drilling)
    (diameter 120)
    (length 400)
    (life-cycle 180)
	(cost 30.000)
	))
	

(assert (cutting-condition 	
    	(process drilling)
		(part-material Aluminum)
		(tool-material Hss)
		(tool-diameter 120)
		(speed 250)
		(feed 0.017)
        ))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Slot ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;        

(assert (tool
	(name T201)
	(material Hss)
	(for-process end-milling-slotting)
	(diameter 100)
        (length 500)
	(width 0.625)
	(number-of-teeth 4)
	(life-cycle 180)
	(cost 30.000)
	))
	
(assert (tool
	(name T218)
	(material Hss)
	(for-process side-milling)
	(diameter 10.0)
        (width 100)
	(length 10)
	(life-cycle 180)
	(cost 30.000)
	))

(assert (cutting-condition 	
    	(process end-milling-slotting)
		(part-material CarbonSteel)
		(tool-material Hss)
		(tool-diameter 100)
		(speed 70)
		(feed 0.006)
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
    (name T512)
    (material Carbide)
    (for-process drilling)
    (diameter 60)
    (length 200)
    (life-cycle 180)
	(cost 30.000)
	))
	
(assert (cutting-condition 	
    	(process drilling)
		(part-material CarbonSteel)
		(tool-material Carbide)
		(tool-diameter 60)
		(speed 180)
		(feed 0.018)
        ))

(assert (cutting-condition 	
    	(process drilling)
		(part-material Aluminum)
		(tool-material Carbide)
		(tool-diameter 60)
		(speed 300)
		(feed 0.019)
        ))

(assert (tool
    (name T513)
    (material Carbide)
    (for-process drilling)
    (diameter 120)
    (length 200)
    (life-cycle 180)
	(cost 30.000)
	))
	
(assert (cutting-condition 	
    	(process drilling)
		(part-material CarbonSteel)
		(tool-material Carbide)
		(tool-diameter 120)
		(speed 180)
		(feed 0.018)
        ))

(assert (cutting-condition 	
    	(process drilling)
		(part-material Aluminum)
		(tool-material Carbide)
		(tool-diameter 120)
		(speed 300)
		(feed 0.019)
        ))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Chamfer ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Slot ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;        

(assert (tool
	(name T901)
	(material Hss)
	(for-process end-milling-slotting)
	(diameter 100.0)
        (length 500)
	(width 0.625)
	(number-of-teeth 4)
	(life-cycle 180)
	(cost 30.000)
	))

(assert (tool
	(name T902)
	(material Hss)
	(for-process side-milling)
	(diameter 10.0)
        (width 100.0)
	(length 10)
	(life-cycle 180)
	(cost 30.000)
	))

(assert (cutting-condition 	
    	(process end-milling-slotting)
		(part-material CarbonSteel)
		(tool-material Carbide)
		(tool-diameter 100)
		(speed 70)
		(feed 0.006)
        ))

(assert (cutting-condition 	
    	(process side-milling)
		(part-material CarbonSteel)
		(tool-material Carbide)
		(tool-diameter 10.0)
		(speed 60)
		(feed 0.007)
        ))

(assert (cutting-condition 	
    	(process side-milling)
		(part-material Aluminum)
		(tool-material Carbide)
		(tool-diameter 10.0)
		(speed 750)
		(feed 0.02)
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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Top Surface  //created by Mayur   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(assert (tool
	(name T802)
	(material Carbide)
	(for-process slab-milling)
	(diameter 10.0)
        (width 5.0)
	(life-cycle 180)
	(cost 30.000))
)

(assert (cutting-condition 	
    	(process slab-milling)
		(part-material CarbonSteel)
		(tool-material Carbide)
		(tool-diameter 10.0)
		(speed 375)
		(feed 0.008)
        ))




