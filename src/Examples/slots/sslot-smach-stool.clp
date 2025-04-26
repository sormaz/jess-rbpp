(require rbpp-init)
(require rbpp-rules)

(assert (machine
	(name m1100)
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
)


(assert (process 
    (name end-milling-peripheral)
    (machine m1100))
)

(assert (tool
	(name t320.1)
	(material carbide)
	(for-process end-milling-peripheral)
	(diameter 2)
	(length 3.5)
	(life-cycle 200)
	(cost 15.000))
)


(assert (feature
    	(name n1)
    	(type slot)
    	(normal x-pos)
    	(dim1 3)
    	(dim2 2)
    	(dim3 12)
    	(status input)
    	(quality 35)
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
    	(process end-milling-peripheral)
		(part-material carbon-steel)
		(tool-material carbide)
		(tool-diameter 2)
		(speed 300)
		(feed 0.003)
        ))
