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
	(material carbide)
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


(assert (tool
	(name TR143)
	(material carbide)
	(for-process drilling)
	(diameter 4.0)
	(length 70)
	(life-cycle 1330)
	(cost 55.000))
)


(assert (tool
	(name TR151)
	(material carbide)
	(for-process drilling)
	(diameter 5.0)
	(length 30)
	(life-cycle 1330)
	(cost 40.000))
)


(assert (tool
	(name TR152)
	(material carbide)
	(for-process drilling)
	(diameter 5.0)
	(length 50)
	(life-cycle 1300)
	(cost 50.000))
)


(assert (tool
	(name TR153)
	(material carbide)
	(for-process drilling)
	(diameter 5.0)
	(length 100)
	(life-cycle 1330)
	(cost 40.000))
)




;;;;;;;;------------Tool material HSS-----------;;;;;;;
;;;;;;;;;;;;;;;		Drilling		;;;;;;;;;;;;;;;;;;


(assert (tool
	(name TR241)
	(material HSS)
	(for-process drilling)
	(diameter 4.0)
	(length 30)
	(life-cycle 100)
	(cost 5.000))
)


(assert (tool
	(name TR242)
	(material HSS)
	(for-process drilling)
	(diameter 4.0)
	(length 50)
	(life-cycle 100)
	(cost 5.500))
)


(assert (tool
	(name TR23)
	(material HSS)
	(for-process drilling)
	(diameter 4.0)
	(length 100)
	(life-cycle 100)
	(cost 7.000))
)


(assert (tool
	(name TR251)
	(material HSS)
	(for-process drilling)
	(diameter 5.0)
	(length 30)
	(life-cycle 100)
	(cost 5.500))
)


(assert (tool
	(name TR252)
	(material HSS)
	(for-process drilling)
	(diameter 5.0)
	(length 50)
	(life-cycle 100)
	(cost 8.000))
)


(assert (tool
	(name TR253)
	(material HSS)
	(for-process drilling)
	(diameter 4.0)
	(length 100)
	(life-cycle 100)
	(cost 40.000))
)


;;;;;;;;------------Tool material Carbide-----------;;;;;;;
;;;;;;;;;;;;;;;		Side Milling	   	;;;;;;;;;;;;;;;;;;


(assert (tool
	(name TRM1101)
	(material carbide)
	(for-process side-milling)
	(diameter 10.0)
	(length 22)
	(number-of-teeth 4)
	(life-cycle 50)
	(cost 100))
)
	