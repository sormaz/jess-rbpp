(defglobal ?*ruleFolder* = "C:/Users/sanjeewa/Desktop/Sanjeewa/JAVA/IMPLANNER-workspace/jess-rbpp/src/")

(batch (str-cat ?*ruleFolder* "rbpp.clp"))

(facts)

(rules)

(defglobal ?*part* = (new
edu.ohiou.implanner.parts.MfgPartModel "P"
"CarbonSteel" 10 (new
edu.ohiou.implanner.geometry.Stock)
)
)
