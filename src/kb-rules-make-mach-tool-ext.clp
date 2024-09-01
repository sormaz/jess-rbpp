;(require setup-planning-templates)
;(require functions)

(import javax.vecmath.*)
(import java.lang.*)

(import edu.ohiou.mfgresearch.implanner.processes.*)

   
(defrule rule-add-tool-ext
    ?flist <- (MachToolList (fact ?factlist) (fact-ext ?extlist))
    ?tool <- (tool (name ?f1))
    (test (not (?factlist contains ?tool)))
    =>
    (?factlist add ?tool)
    (?extlist add (new FactKBExtension ?tool))
    (printout t "List:" (?factlist toString) crlf)
    )
    
(defrule rule-add-machine-ext
    ?mtl <- (MachToolList (fact ?factlist) (fact-ext ?extlist))
    ?mach <- (machine (name ?f1))
    (test (not (?factlist contains ?mach)))
    =>
    (?factlist add ?mach)
    (?extlist add (new FactKBExtension ?mach))
    (printout t "List:" (?factlist toString) crlf)
    )
    
(defquery find-mach-proc
  "Finds process facts with a given machine and process names"
  (declare (variables ?proc ?mach))
  (process (name ?proc) (machine ?mach)))
  
  
;  (reset)
;(bind ?result (run-query* find-mach-proc end-milling-slotting CncVMillFast))


;(while (?result next)
 ; (printout t (?result getString proc) " " (?result getString mach) crlf))