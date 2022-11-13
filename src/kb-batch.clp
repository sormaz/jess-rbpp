(import java.util.*)

(deftemplate MachToolList
    (slot fact (default(new ArrayList)))
    (slot fact-ext (default(new ArrayList)))
    )
    
(bind ?mtl (assert (MachToolList)))
    
;(batch "src/kb-load-rbpp.clp")

(batch  (str-cat ?*ruleFolder* "kb-rules-make-mach-tool-ext.clp"))
(batch  (str-cat ?*ruleFolder* "kb-rules-make-mach-tool-ext.clp"))

(run)


(bind ?extlist (fact-slot-value ?mtl fact-ext))  


(?extlist add "end-milling-slotting") 
(?extlist add "end-milling-peripheral")
(?extlist add "drilling") 
(?extlist add "side-milling") 
(?extlist add "slab-milling")
(?extlist add "chamfer-side-milling")    
(?extlist add "chamfer-end-milling")           

(bind ?eg (new edu.ohiou.mfgresearch.labimp.graphmodel.DefaultGraphModel (?extlist toArray)  
        (new edu.ohiou.mfgresearch.implanner.processes.ProcessKBGenerator (engine))  FALSE  FALSE))
(?eg display ?*KB-data*)


;(batch "src/kb-batch.clp")