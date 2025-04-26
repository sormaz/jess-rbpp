(require rbpp-init)

;;;;;;;;------------Tool material Hss-----------;;;;;;;

;;;;;;;;;;;;;;;		Drilling		;;;;;;;;;;;;;;;;;;

	(assert (tool
    (name Td-2.4)
    (material Hss)
    (for-process drilling)
    (diameter 2.4)
    (length 15.0)
    (life-cycle 180)
	(cost 30.000))
)

	(assert (tool
    (name Td-4.8)
    (material Hss)
    (for-process drilling)
    (diameter 4.8)
    (length 15.0)
    (life-cycle 180)
	(cost 30.000))
)

(assert (tool
	(name Tface-18)
	(material Hss)
	(for-process face-milling)
	(diameter 18.0)
	(number-of-teeth 12)
	(life-cycle 300)
	(cost 60.000))
	)
	