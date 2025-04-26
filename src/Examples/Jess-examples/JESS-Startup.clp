(bind ?*ruleFolder* "J:/user/patel/ImplannerFolder/jess-rbpp/src/")

(batch (str-cat ?*ruleFolder* "rbpp.clp"))

(facts)

(rules)

(defglobal ?*part* = (new
edu.ohiou.implanner.parts.MfgPartModel "P"
"CarbonSteel" 10 (new
edu.ohiou.implanner.geometry.Stock)))

(assert (part
    	(material CarbonSteel)
    	(batch-size 1000.0)
    	(x-dim 16)
   		(y-dim 12)
    	(z-dim 8)
    	)
)

(assert (feature
    	(name rs9)
    	(type slot)
    	(normal z-neg)
    	(dim1 3.5)
    	(dim2 3.0)
    	(dim3 16)
    	(status input)
    	(quality 50)
    	)
)

(agenda)

(run 1)