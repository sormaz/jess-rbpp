;(in-package : ops)
; Defines cutting conditions for Aluminum and additional tools
(require rbpp-init)

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
		(tool-diameter 2.5)
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

(provide aes94_mdata)