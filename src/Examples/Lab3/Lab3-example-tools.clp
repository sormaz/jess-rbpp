(require rbpp-init)


;;;;;;;;;------------------------------Tool Material HSS ---------------------;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;       Drilling         ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(assert (tool
    (name T101)
    (material Hss)
    (for-process drilling)
    (diameter 0.375)
    (length 5.0)
    (life-cycle 180)
	(cost 30.000))
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Pocket   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(assert (tool
	(name T303)
	(material Hss)
	(for-process end-milling-peripheral)
	(diameter 0.5)
	(length 5.0)
	(life-cycle 240)
	(cost 25.000))
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Slot ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;        

(assert (tool
	(name T601)
	(material Carbide)
	(for-process end-milling-slotting)
	(diameter 1.0)
        (length 2.0)
	;(width 0.625)
	(number-of-teeth 4)
	(life-cycle 180)
	(cost 30.000))
)

(assert (tool                                   ;added by mayur for Slider slot
	(name T430)
	(material hss)
	(for-process end-milling-slotting)
	(diameter 0.2)
        (length 3.0)
	(number-of-teeth 4)
	(life-cycle 240)
	(cost 40.000))
)

(assert (tool                                   ;added by fRANCESCO for lab3 slot
	(name T431)
	(material Hss)
	(for-process end-milling-slotting)
	(diameter 0.25)
        (length 3.0)
	(number-of-teeth 4)
	(life-cycle 240)
	(cost 40.000))
)

(assert (tool
	(name T203)
	(material Hss)
	(for-process end-milling-slotting)
	(diameter 0.875)
        (length 10)
	(number-of-teeth 4)
	(width 0.875)
	(life-cycle 180)
	(cost 30.000))
)
