(defglobal ?*ruleFolder* = "C:/Users/sormaz/Documents/sormaz/research/implannerFolder/jess-rbpp/src/")

(batch (str-cat ?*ruleFolder* "rbpp.clp"))

(batch (str-cat ?*ruleFolder* "Chamfer-data.clp"))

(batch (str-cat ?*ruleFolder* "Jess-Chamfer.clp"))

(facts)

(rules)

(defglobal ?*part* = (new
edu.ohiou.implanner.parts.MfgPartModel "P"
"CarbonSteel" 10 (new
edu.ohiou.implanner.geometry.Stock)
)
)


;(run)

;(batch "./JESS-Chamfer-startup.clp")
;(watch rules)