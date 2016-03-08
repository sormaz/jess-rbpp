
 ;(in-package :ops)
 
(require rbpp-init)
 
(assert (tool
	(name T110)
	(material hss)
	(for-process face-milling)
	(diameter 12.0)
    (number-of-teeth 12)
	(life-cycle 300)
	(cost 60.000))
)

(assert (tool
	(name T120)
	(material hss)
	(for-process face-milling)
	(diameter 12.0)
    (number-of-teeth 8)
	(life-cycle 300)
	(cost 40.000))
) 

(assert (tool
	(name T130)
	(material hss)
	(for-process face-milling)
	(diameter 16.0)
	(number-of-teeth 12)
	(life-cycle 300)
	(cost 60.000))
)

(assert (tool
	(name T2l0)
	(material hss)
	(for-process slab-milling)
	(width 12.0)
	(diameter 3.0)
	(number-of-teeth 12)
	(life-cycle 420)
	(cost 80.000))
)

(assert (tool
	(name T260)
	(material hss)
	(for-process side-milling)
	(diameter 12)
	(width 4.0)
	(number-of-teeth 8)
	(life-cycle 300)
	(cost 65.000))
)

(assert (tool
	(name T310)
	(material hss)
	(for-process end-milling-peripheral)
	(diameter 4.0)
	(length 3.5)
	(life-cycle 240)
	(cost 25.000))
)

(assert (tool
	(name T270)
	(material hss)
	(for-process side-milling)
	(diameter 6.0)
	(width 2.0)
	(number-of-teeth 6)
	(life-cycle 240)
	(cost 45.000))
)

(assert (tool
	(name T280)
	(material hss)
	(for-process side-milling)
	(diameter 6.0)
	(width 1.0)
	(number-of-teeth 6)
	(life-cycle 240)
	(cost 45.000))
)
    
(assert (tool
	(name T320)
	(material hss)
	(for-process end-milling-peripheral)
	(diameter 2.0)
	(length 3.5)
	(life-cycle 200)
	(cost 15.000))
)

(assert (tool
	(name T410)
	(material hss)
	(for-process end-milling-slotting)
	(diameter 1.0)
    (length 3.0)
	(number-of-teeth 4)
	(life-cycle 180)
	(cost 30.000))
)

(assert (tool
	(name T420)
	(material hss)
	(for-process end-milling-slotting)
	(diameter 2.0)
        (length 3.0)
	(number-of-teeth 4)
	(life-cycle 240)
	(cost 40.000))
)

(assert (tool
	(name T510)
	(material carbide)
	(for-process drilling)
	(diameter 1.0)
        (length 3.0)
	(life-cycle 180)
	(cost 15.000))
)

(assert (tool
	(name T520)
	(material hss)
	(for-process drilling)
	(diameter 1.0)
        (length 3.0)
	(life-cycle 180)
	(cost 30.000))
)

(assert (tool
	(name T550)
	(material hss)
	(for-process boring)
	(diameter 1.0)
        (length 3.0)
	(life-cycle 280)
	(cost 45.000))
)

(assert (tool
	(name T560)
	(material hss)
	(for-process reaming)
	(diameter 1.0)
        (length 3.0)
	(life-cycle 360)
	(cost 25.000))
)

(assert (tool
	(name T110.1)
	(material carbide)
	(for-process face-milling)
	(diameter 12.0)
	(number-of-teeth 12)
	(life-cycle 300)
	(cost 60.000))
)

(assert (tool
	(name T120.1)
	(material carbide)
	(for-process face-milling)
	(diameter 12.0)
	(number-of-teeth 8)
	(life-cycle 300)
	(cost 40.000))
)

(assert (tool
	(name T130.1)
	(material carbide)
	(for-process face-milling)
        (diameter 16.0)
	(number-of-teeth 12)
	(life-cycle 300)
	(cost 60.000))
)

(assert (tool
	(name T210.1)
	(material carbide)
        (for-process slab-milling)
	(width 12.0)
	(diameter 3.0)
	(number-of-teeth 12)
	(life-cycle 420)
	(cost 80.000))
)

(assert (tool
	(name T260.1)
	(material carbide)
	(for-process side-milling)
	(diameter 12.0)
	(width 4.0)
	(number-of-teeth 8)
	(life-cycle 300)
	(cost 65.000))
)

(assert (tool
	(name T310.1)
	(material carbide)
	(for-process end-milling-peripheral)
	(diameter 4.0)
	(length 3.5)
	(life-cycle 240)
	(cost 25.000))
)
    
(assert (tool
	(name T270.1)
	(material carbide)
	(for-process side-milling)
	(diameter 6.0)
	(width 2.0)
	(number-of-teeth 6)
	(life-cycle 240)
	(cost 45.000))
)

(assert (tool
	(name T320.1)
	(material carbide)
	(for-process end-milling-peripheral)
	(diameter 2.0)
	(length 3.5)
	(life-cycle 200)
	(cost 15.000))
)

(assert (tool
	(name T410.1)
	(material carbide)
	(for-process end-milling-slotting)
	(diameter 1.0)
	(number-of-teeth 4)
	(life-cycle 180)
	(cost 30.000))
) 
   
(assert (tool
	(name T420.1)
	(material carbide)
	(for-process end-milling-slotting)
	(diameter 2.0)
	(number-of-teeth 4)
	(life-cycle 240)
	(cost 40.000))
)

(assert (tool
	(name T550.1)
	(material carbide)
	(for-process boring)
	(diameter 1.0)
	(life-cycle 280)
	(cost 45.000))
)

(assert (tool
	(name T560.1)
	(material carbide)
	(for-process reaming)
	(diameter 1.0)
	(life-cycle 360)
	(cost 25.000))
)