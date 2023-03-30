(batch (str-cat ?*ruleFolder* "Lab3-S4-example-tools.clp"))
(batch (str-cat ?*ruleFolder* "Lab3-S4-cutting-parameters.clp"))

(assert (machine
	(name CncHMillFast)
	(type mill)
	(toolhead horizontal)
	(bed-size-x 54)
	(bed-size-y 20)
	(bed-size-z 10)
	(setup-time 240)
	(power 4)
	(mhandling-time 0.8)
	(speed-efficiency 1.0)
	(tool-change-time 40)
	(unit-cost 1.3)
    (tool-list T431 T101)
))

(assert (process 
    (name end-milling-slotting)
    (machine CncHMillFast))
)