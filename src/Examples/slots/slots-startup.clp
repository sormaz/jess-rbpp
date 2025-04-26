(defglobal ?*ruleFolder* = "D:/OhioUniversity/Mayur/Java-Workspace/jess-rbpp/src/")

(batch (str-cat ?*ruleFolder* "rules-slots.clp"))

;(batch (str-cat ?*ruleFolder* "Universal-data.clp"))

;(batch "./src/slots-startup.clp")



(facts)

(watch activations)

(watch facts)

(watch rules)

(rules)

(defglobal ?*part* = (new
edu.ohiou.implanner.parts.MfgPartModel "P"
"CarbonSteel" 10 (new
edu.ohiou.implanner.geometry.Stock)
)
)