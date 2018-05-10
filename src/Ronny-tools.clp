;(in-package : ops)
(require rbpp-init)

	(assert (tool
    (name T470)
    (material Hss)
    (for-process drilling)
    (diameter 4.0)
    (length 5.0)
    (life-cycle 180)
	(cost 30.000))
)
    (assert (cutting-condition 	
    	(process drilling)
		(part-material CarbonSteel)
		(tool-material Hss)
		(tool-diameter 4.0)
		(speed 300)
		(feed 0.003)
        ))


;;;;;;;;------------Tool material Carbide-----------;;;;;;;
;;;;;;;;;;;;;;;		Drilling		;;;;;;;;;;;;;;;;;;

(assert (tool
	(name TR141)
	(material Hss)
	(for-process drilling)
	(diameter 4.0)
	(length 30)
	(life-cycle 1330)
	(cost 25.000))
)


