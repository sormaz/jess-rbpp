(batch (str-cat ?*ruleFolder* "setup-test/setup-test-machines.clp"))

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