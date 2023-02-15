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
	(name T301)
	(material HSS)
	(for-process end-milling-peripheral)
	(diameter .25)
	(length 2.0)
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