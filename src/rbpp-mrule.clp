
(require rbpp-init)
(import edu.ohiou.mfgresearch.implanner.processes.*)
(import edu.ohiou.mfgresearch.implanner.resources.*)

;(deffunction makeEmpProcess (?operation ?nt)
;	(bind ?emp (new EndMillingPeripheral))
	; set Feature
 ;   (printout t "Part " *?part*)
;	(?emp setFeature (?*part* getFeatureForName (fact-slot-value ?operation feature)))
	; set Stock
;	(?emp setStock (?*part* getStock))
;	(?emp setTool ?nt)
	; set Cutting parameters
;	(?emp setCuttingParameter)
;)

(defrule make-IMP-tool 
     ?t<- (tool (name ?t1)  (material ?m1)(diameter ?d1) (length ?length) (imp-tool nil) (number-of-teeth ?nt))
    =>
    (bind ?tool (new Tool ?t1 ?d1 ?length ?m1))
    (?tool setNoTeeths ?nt)
    (modify ?t (imp-tool ?tool))
    )

(defrule make-IMP-Machine 
    ?mac <- (machine (name ?m) (imp-machine nil))
   =>
    (bind ?machine (new Machine ?m))
    (modify ?mac (imp-machine ?machine))
)
 
(defrule emp-complete-connected
    (feature (name ?f1) (status ?ordered) (object ?f&~nil))
    ?op <- (operation (feature ?f1) (tool ?t1) (machine ?m) (process end-milling-peripheral) (op-time ?t) (cost ?c))
    (tool (name ?t1)  (material ?m1)(diameter ?d1) (length ?length) (imp-tool ?tool&~nil))
    (machine (name ?m)(imp-machine ?mach&~nil))
    
    =>
    (bind ?emp (new EndMillingPeripheral))
    (?emp settFeature (?*part* getFeatureForName ?f1))
    (?emp setName (str-cat end-milling-peripheral- ?f1))   ;concatenate process and last 4 chara of feature name  //mayur
    (?emp setStock (?*part* getStock))
    (?emp setTool ?tool)
    (?emp setMachine ?mach)
    (?emp setProcessTime ?t)
    (?emp setProcessCost ?c)
    (?emp setCuttingParameter)
)

(defrule emp-complete
    (feature (name ?f1) (status ?ordered) (object nil))
    (part (material ?mat))
    ?op <- (operation (feature ?f1) (tool ?t1) (machine ?m) (process end-milling-peripheral)(op-time ?t) (cost ?c) )
    (tool (name ?t1)  (material ?m1)(diameter ?d1) (length ?length) (imp-tool ?tool&~nil))
    (machine (name ?m)(imp-machine ?mach&~nil))
    
    =>
    (bind ?emp (new EndMillingPeripheral))
    (?emp setFeatureName ?f1)
    (?emp setToolName ?t1 )
    (?emp setMachineName ?m)
    (?emp setProcessTime ?t)
    (?emp setProcessCost ?c)
    (?emp setCuttingParameter ?mat ?m1 ?d1)
)

(defrule ems-complete-connected
    (feature (name ?f1) (status ?ordered)(object ?f&~nil))
    ?op <- (operation (feature ?f1) (tool ?t1) (machine ?m)(process end-milling-slotting) (op-time ?t) (cost ?c) )
    (tool (name ?t1)  (material ?m1)(diameter ?d1) (length ?length) (imp-tool ?tool&~nil))
    (machine (name ?m)(imp-machine ?mach&~nil))
    =>
    (bind ?emp (new EndMillingSlotting))
    (?emp settFeature (?*part* getFeatureForName ?f1))
    (?emp setName (str-cat end-milling-slotting- ?f1))
    (?emp setTool ?tool)
    (?emp setMachine ?mach)
    (?emp setProcessTime ?t)
    (?emp setProcessCost ?c)                                ;commented by mayur 3/24/2016 (reason: time not needed for setup planning)
    ;(printout t ?t1 " tool dia " ?d1 " length " ?length " material " ?m1 crlf)
    (?emp setCuttingParameter)
)

(defrule ems-complete
    (feature (name ?f1) (status ?ordered)(object nil))
    (part (material ?mat))
    ?op <- (operation (feature ?f1) (tool ?t1) (machine ?m)(process end-milling-slotting) (op-time ?t) (cost ?c) )
    (tool (name ?t1)  (material ?m1)(diameter ?d1) (length ?length) (imp-tool ?tool&~nil))
    (machine (name ?m)(imp-machine ?mach&~nil))
    =>
    (bind ?emp (new EndMillingSlotting))
    (?emp setFeatureName ?f1)
    (?emp setToolName ?t1)
    (?emp setMachineName ?m)
    (?emp setProcessTime ?t)
    (?emp setProcessCost ?c)
    ;(printout t ?t1 " tool dia " ?d1 " length " ?length " material " ?m1 crlf)
    (?emp setCuttingParameter ?mat ?m1 ?d1)
)

(defrule emsm-complete-connected
    (feature (name ?f1) (status ?ordered)(object ?f&~nil))
    ?op <- (operation (feature ?f1) (tool ?t1) (machine ?m)(process side-milling) (op-time ?t) (cost ?c) )
    (tool (name ?t1)  (material ?m1)(diameter ?d1) (length ?length) (imp-tool ?tool&~nil))
    (machine (name ?m)(imp-machine ?mach&~nil))
    =>
    (bind ?emp (new SideMilling))
    (?emp settFeature (?*part* getFeatureForName ?f1))
    (?emp setName (str-cat side-milling- ?f1))
    (?emp setStock (?*part* getStock))
     (?emp setTool ?tool)
    (?emp setMachine ?mach)
    (?emp setProcessTime ?t)
    (?emp setProcessCost ?c)
   (?emp setTool (new Tool ?t1 ?d1 ?length ?m1))
    (?emp setCuttingParameter)
)
(defrule emsm-complete
    (feature (name ?f1) (status ?ordered)(object nil))
    (part (material ?mat))
    ?op <- (operation (feature ?f1) (tool ?t1) (machine ?m)(process side-milling) (op-time ?t) (cost ?c) )
    (tool (name ?t1)  (material ?m1)(diameter ?d1) (length ?length) (imp-tool ?tool&~nil))
    (machine (name ?m)(imp-machine ?mach&~nil))
    =>
    (bind ?emp (new SideMilling))
    (?emp setFeatureName ?f1)
     (?emp setToolName ?t1)
    (?emp setMachineName ?m)
    (?emp setProcessTime ?t)
    (?emp setProcessCost ?c)
    (?emp setCuttingParameter ?mat ?m1 ?d1)
)


(defrule drilling-complete-connected
    (feature (name ?f1) (status ?ordered)(object ?f&~nil))
     ?op <- (operation (machine ?m)(feature ?f1) (tool ?t1) (process drilling) (op-time ?t&~nil) (cost ?c) )
    (tool (name ?t1)  (material ?m1)(diameter ?d1) (length ?length) (imp-tool ?tool&~nil))
    (machine (name ?m)(imp-machine ?mach&~nil)(tool-list $?tools&: (member$ ?t1 $?tools)))
    =>
    (bind ?emp (new TwistDrilling))
    (?emp settFeature (?*part* getFeatureForName ?f1))
    (?emp setName (str-cat drilling- ?f1))
    (?emp setStock (?*part* getStock))
    (?emp setTool ?tool)
    (?emp setMachine ?mach)
    (?emp setProcessTime ?t)
    (?emp setProcessCost ?c)
    (?emp setCuttingParameter)
)

(defrule drilling-complete
    (feature (name ?f1) (status ?ordered)(object nil))
    (part (material ?mat))
     ?op <- (operation (machine ?m)(feature ?f1) (tool ?t1) (process drilling) (op-time ?t) (cost ?c) )
    (tool (name ?t1)  (material ?m1)(diameter ?d1) (length ?length) (imp-tool ?tool&~nil))
    (machine (name ?m)(imp-machine ?mach&~nil)(tool-list $?tools&: (member$ ?t1 $?tools)))
    =>
    (bind ?emp (new TwistDrilling))
    (?emp setFeatureName  ?f1)
    (?emp setToolName ?t1)
    (?emp setMachineName ?m)
    (?emp setProcessTime ?t)
    (?emp setProcessCost ?c)
    (?emp setCuttingParameter ?mat ?m1 ?d1)
)
(defrule chamfer-complete-connected
    (feature (name ?f1) (object ?f&~nil))
     ?op <- (operation (machine ?m) (feature ?f1) (tool ?t1) (process chamfer-end-milling) (op-time ?t) (cost ?c) )
    (tool (name ?t1)  (material ?m1)(diameter ?d1) (length ?length) (imp-tool ?tool&~nil))
    (machine (name ?m)(imp-machine ?mach&~nil)(tool-list $?tools&: (member$ ?t1 $?tools)))
    =>
    (bind ?emp (new EndMillingPeripheral))
    (?emp settFeature (?*part* getFeatureForName ?f1))
    (?emp setName (str-cat chamfer-end-milling- ?f1))
    (?emp setStock (?*part* getStock))
    (?emp setTool ?tool)
    (?emp setMachine ?mach)
    (?emp setProcessTime ?t)
    (?emp setProcessCost ?c)
    (?emp setCuttingParameter)
)

(defrule chamfer-complete
    (feature (name ?f1) (object nil))
    (part (material ?mat))
     ?op <- (operation (machine ?m) (feature ?f1) (tool ?t1) (process chamfer-end-milling) (op-time ?t) (cost ?c) )
    (tool (name ?t1)  (material ?m1)(diameter ?d1) (length ?length) (imp-tool ?tool&~nil))
    (machine (name ?m)(imp-machine ?mach&~nil)(tool-list $?tools&: (member$ ?t1 $?tools)))
    =>
    (bind ?emp (new EndMillingPeripheral))
    (?emp setFeatureName ?f1)
    (?emp setToolName ?t1)
    (?emp setMachineName ?m)
    (?emp setProcessTime ?t)
    (?emp setProcessCost ?c)
    (?emp setCuttingParameter ?mat ?m1 ?d1)
)

(defrule report-mach-process
	(process (machine ?m) (name ?n))
;	(not (process (machine ?other&:(< ?other ?m))))
	=>
	(printout t "machine: " ?m " -> " ?n crlf)
	)
;(new Tool ?t1 ?d1 ?length ?m1)

(defrule emslm-complete-connected                  ;slab milling //mayur
    (feature (name ?f1) (status ?ordered)(object ?f&~nil))
    ?op <- (operation (feature ?f1) (tool ?t1) (machine ?m)(process slab-milling) (op-time ?t) (cost ?c) )
    (tool (name ?t1)  (material ?m1)(diameter ?d1) (length ?length) (imp-tool ?tool&~nil))
    (machine (name ?m)(imp-machine ?mach&~nil))
    =>
    (bind ?emp (new SlabMilling))
    (?emp settFeature (?*part* getFeatureForName ?f1))
    (?emp setName (str-cat slab-milling- ?f1))
    (?emp setStock (?*part* getStock))
     (?emp setTool ?tool)
    (?emp setMachine ?mach)
    (?emp setProcessTime ?t)
    (?emp setProcessCost ?c)
   (?emp setTool (new Tool ?t1 ?d1 ?length ?m1))
    (?emp setCuttingParameter)
)

(defrule emslm-complete                      ; slab milling //mayur
    (feature (name ?f1) (status ?ordered)(object nil))
    (part (material ?mat))
    ?op <- (operation (feature ?f1) (tool ?t1) (machine ?m)(process slab-milling) (op-time ?t) (cost ?c) )
    (tool (name ?t1)  (material ?m1)(diameter ?d1) (length ?length) (imp-tool ?tool&~nil))
    (machine (name ?m)(imp-machine ?mach&~nil))
    =>
    (bind ?emp (new SlabMilling))
    (?emp setFeatureName ?f1)
     (?emp setToolName ?t1)
    (?emp setMachineName ?m)
    (?emp setProcessTime ?t)
    (?emp setProcessCost ?c)
    (?emp setCuttingParameter ?mat ?m1 ?d1)
)


(provide rbpp-mrule)