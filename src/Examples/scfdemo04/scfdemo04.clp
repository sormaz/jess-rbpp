
(require rbpp-init)
(require rbpp-rules)
;(require rbpp-mrule)
(require scfdemo04-mdata)


(watch rules)

(assert (part
    	(material CarbonSteel)
    	(batch-size 1000.0)
    	(x-dim 16)
   		(y-dim 12)
    	(z-dim 8)
    	)
)

(assert (feature
    	(name rp8)
    	(type pocket)
    	(normal z-pos)
    	(dim1 1.25)
    	(dim2 3.5)
    	(dim3 3.5)
    	(status input)
    	(quality 50)
    	)
)




(defglobal ?*part* = (new
edu.ohiou.implanner.parts.MfgPartModel "P"
"CarbonSteel" 10 (new
edu.ohiou.implanner.geometry.Stock)))

