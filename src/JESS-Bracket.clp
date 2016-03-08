(assert (part 
		(material Aluminum) 
		(x-dim 20.0) 
		(y-dim 5.0) 
		(z-dim 10.0) 
		(quality 20.0) 
		(batch-size 50)
		)
)
	
;;;;;;; 1 simple hole ( setup y-pos, no. 5) ;;;;;;;;

(assert (feature 
 		(name simple_hole_11)
  		(type hole) 
  		(quality 20.0) 
  		(tolerance 50.0) 
  		(normal y-pos) 
  		(slope 0) 
  		(dim1 10.0) 
  		(dim2 5.0) 
  		(dim3 0) 
  		(diam03 0) 
  		(status input)
  		)
  )

;;;;;;; 2 simple hole ( setup Z-neg, no. 2) ;;;;;;;;


(assert (feature 
 		(name simple_hole_21)
  		(type hole) 
  		(quality 20.0) 
  		(tolerance 50.0) 
  		(normal z-neg) 
  		(slope 0) 
  		(dim1 1.0) 
  		(dim2 5.0) 
  		(dim3 0) 
  		(diam03 0) 
  		(status input)
  		)
  )


;;;;;;; 2 simple hole ( setup Z-neg, no. 2) ;;;;;;;;


(assert (feature 
 		(name simple_hole_22)
  		(type hole) 
  		(quality 20.0) 
  		(tolerance 50.0) 
  		(normal z-neg) 
  		(slope 0) 
  		(dim1 1.5) 
  		(dim2 5.0) 
  		(dim3 0) 
  		(diam03 0) 
  		(status input)
  		)
  )


;;;;;;; 3 Rectangular slot ( setup Z-neg, no. 2) ;;;;;;;;


(assert (feature 
  		(name rectangular_slot_1) 
  		(type slot) 
  		(quality 20.0) 
  		(tolerance 50.0) 
  		(normal z-neg) 
  		(slope 0) 
  		(dim1 2.0) 
  		(dim2 2.5) 
  		(dim3 5.0) 
  		(diam03 0) 
  		(status input)
  		)
  )	


;;;;;;; 4 Rectangular slot ( setup Z-neg, no. 2) ;;;;;;;;

(assert (feature 
  		(name rectangular_slot_2) 
  		(type slot) 
  		(quality 20.0) 
  		(tolerance 50.0) 
  		(normal z-neg) 
  		(slope 0) 
  		(dim1 3.5) 
  		(dim2 5.0) 
  		(dim3 5.0) 
  		(diam03 0) 
  		(status input)
  		)
  )	



;;;;;;; 5 Rectangular slot ( setup Z-neg, no. 1) ;;;;;;;;


(assert (feature 
  		(name rectangular_slot_3) 
  		(type slot) 
  		(quality 20.0) 
  		(tolerance 50.0) 
  		(normal z-neg) 
  		(slope 0) 
  		(dim1 3.0) 
  		(dim2 5.0) 
  		(dim3 5.0) 
  		(diam03 0) 
  		(status input)
  		)
  )	





;;;;;;; 6 Rectangular pocket ( setup Z-neg, no. 1) ;;;;;;;;


(assert (feature 
		(name rectangular_pocket_1)
		(type slot) 
		(quality 20.0)
		(tolerance 50.0)
		(normal z-neg) 
		(slope 0) 
		(dim1 2.0) 
		(dim2 1.0)
		(dim3 4.0)
		(diam03 0)
		(status input)
		)
)



;;;;;;; 7 Rectangular pocket ( setup Y-neg, no. 1) ;;;;;;;;


(assert (feature 
		(name rectangular_pocket_2)
		(type slot) 
		(quality 20.0)
		(tolerance 50.0)
		(normal Y-neg) 
		(slope 0) 
		(dim1 3.5) 
		(dim2 2.0)
		(dim3 8.0)
		(diam03 0)
		(status input)
		)
)



















