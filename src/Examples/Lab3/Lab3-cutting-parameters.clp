(assert (cutting-condition 	
    	(process drilling)
		(part-material Aluminum)
		(tool-material Hss)
		(tool-diameter 2.0)
		(speed 250)
		(feed 0.017)
        ))
        
 ;;;;;;;;;;;;;;;;; for end milling peripheral        ;;;;;;;;;;;;;;;;
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
 
 ;;;;;;;;;;;;;;;;; for end milling slotting       ;;;;;;;;;;;;;;;;
 (assert (cutting-condition 	
    	(process end-milling-slotting)
		(part-material CarbonSteel)
		(tool-material Hss)
		(tool-diameter 0.875)
		(speed 70)
		(feed 0.006)
        ))

(assert (cutting-condition 	;copied for lab3 example value for spd and feed may not be correct
    	(process end-milling-slotting)
		(part-material CarbonSteel)
		(tool-material Hss)
		(tool-diameter 0.25)
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