(require rbpp-init)
(require rbpp-rules)

(assert (machine
	(name dr100) 
	(type drill)
	(toolhead vertical)
	(bed-size-x 54)
	(bed-size-y 18)
	(bed-size-z 10)
	(setup-time 240)
	(power 4)
	(mhandling-time 0.5)
	(speed-efficiency 1.0)
	(tool-change-time 10)
	(unit-cost 1.15))
)

(assert (process
	(name drilling)
	(machine dr100))
)

(assert (tool
	(name t520)
	(material hss)
	(for-process drilling)
	(diameter 1.0)
	(life-cycle 180)
	(cost 30.000))
)

(assert (feature
    	(name h1)
    	(type hole)
    	(normal z-pos)
    	(dim1 1.0)
    	(dim2 8)
    	(status input) 
    	(quality 20)
    	(tolerance 15)
    	)
)

(assert (part
    	(material carbon-steel)
    	(batch-size 1000.0)
    	(x-dim 16)
   		(y-dim 12)
    	(z-dim 8)
    	)
)

(assert (cutting-condition 	
    	(process drilling)
		(part-material carbon-steel)
		(tool-material hss)
		(tool-diameter 1.0)
		(speed 300)
		(feed 0.003)
        ))



