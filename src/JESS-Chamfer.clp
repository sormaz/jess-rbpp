(assert (part 
		(material CarbonSteel) 
		(x-dim 8.0) 
		(y-dim 8.0) 
		(z-dim 6.0) 
		(quality 20.0) 
		(batch-size 50)
		)
)
;***************************************************	
;;;;;;; 1 simple hole ( setup z-neg, no. 1) ;;;;;;;;

(assert (feature 
 		(name chamfer_2)
  		(type chamfer) 
  		(quality 40.0) 
  		(tolerance 50.0) 
  		(normal z-neg) 
  		(slope 0) 
  		(dim1 0.35) ;Hole Diameter
  		(dim2 0.35) ;Hole Length
  		(dim3 45) 
  		(diam03 0) 
  		(status input)
  		)
  )
