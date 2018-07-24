;(in-package : ops)
(require rbpp-init)

;;;;;;;;------------Tool material Hss-----------;;;;;;;

;;;;;;;;;;;;;;;		Drilling		;;;;;;;;;;;;;;;;;;

	(assert (tool
    (name T470)
    (material Hss)
    (for-process drilling)
    (diameter 4.0)
    (length 15.0)
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

   (assert (cutting-condition 	
    	(process drilling)
		(part-material CarbonSteel)
		(tool-material carbide)
		(tool-diameter 4.0)
		(speed 500)
		(feed 0.005)
        ))

;;;;;;;;;;;;;;;		Milling		;;;;;;;;;;;;;;;;;;

(assert (tool
	(name TR21212)
	(material Hss)
	(for-process face-milling)
	(diameter 12.0)
    (number-of-teeth 12)
	(life-cycle 300)
	(cost 60.000))
)

(assert (tool
	(name TR21208)
	(material Hss)
	(for-process face-milling)
	(diameter 12.0)
    (number-of-teeth 8)
	(life-cycle 300)
	(cost 40.000))
) 



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


(assert (tool
	(name TR142)
	(material carbide)
	(for-process drilling)
	(diameter 4.0)
	(length 50)
	(life-cycle 1300)
	(cost 35.000))
)


