(assert (part 
		(material Aluminum) 
		(x-dim 12.0) 
		(y-dim 5.0) 
		(z-dim 10.0) 
		(quality 20.0) 
		(batch-size 50)
		)
)
	
;;;;;;; 2 Rectangular slot ( setup Y-positive, no. 2) ;;;;;;;;


(assert (feature 
  		(name rectangular_slot_2) 
  		(type slot) 
  		(quality 20.0) 
  		(tolerance 50.0) 
  		(normal y-neg) 
  		(slope 0) 
  		(dim1 4.0) 
  		(dim2 2.5) 
  		(dim3 8.0) 
  		(diam03 0) 
  		(status input)
  		)
  )	


;;;;;;; 3 Rectangular slot ( setup Y-positive, no. 3) ;;;;;;;;

(assert (feature 
  		(name rectangular_slot_3) 
  		(type slot) 
  		(quality 20.0) 
  		(tolerance 50.0) 
  		(normal y-neg) 
  		(slope 0) 
  		(dim1 4.0) 
  		(dim2 2.0) 
  		(dim3 14.0) 
  		(diam03 0) 
  		(status input)
  		)
  )	



;;;;;;; 4 Rectangular slot ( setup Y-positive, no. 4) ;;;;;;;;


(assert (feature 
  		(name rectangular_slot_4) 
  		(type slot) 
  		(quality 20.0) 
  		(tolerance 50.0) 
  		(normal y-neg) 
  		(slope 0) 
  		(dim1 4.0) 
  		(dim2 2.0) 
  		(dim3 14.0) 
  		(diam03 0) 
  		(status input)
  		)
  )	

;;;;;;; 5 Rectangular slot ( setup Y-positive, no. 5) ;;;;;;;;


(assert (feature 
  		(name rectangular_slot_5) 
  		(type slot) 
  		(quality 20.0) 
  		(tolerance 50.0) 
  		(normal y-neg) 
  		(slope 0) 
  		(dim1 2.0) 
  		(dim2 5.0) 
  		(dim3 10.0) 
  		(diam03 0) 
  		(status input)
  		)
  )	

;;;;;;; 6 Rectangular slot ( setup Y-positive, no. 6) ;;;;;;;;


(assert (feature 
  		(name rectangular_slot_6) 
  		(type slot) 
  		(quality 20.0) 
  		(tolerance 50.0) 
  		(normal y-neg) 
  		(slope 0) 
  		(dim1 2.0) 
  		(dim2 5.0) 
  		(dim3 10.0) 
  		(diam03 0) 
  		(status input)
  		)
  )	

;;;;;;; 7 simple hole ( setup Y-positive, no. 7) ;;;;;;;;


(assert (feature 
 		(name simple_hole_7)
  		(type hole) 
  		(quality 20.0) 
  		(tolerance 50.0) 
  		(normal y-neg) 
  		(slope 0) 
  		(dim1 1.5) 
  		(dim2 2.0) 
  		(dim3 0) 
  		(diam03 0) 
  		(status input)
  		)
  )

;;;;;;; 8 simple hole ( setup Y-positive, no. 8) ;;;;;;;;


(assert (feature 
 		(name simple_hole_8)
  		(type hole) 
  		(quality 20.0) 
  		(tolerance 50.0) 
  		(normal y-neg) 
  		(slope 0) 
  		(dim1 1.5) 
  		(dim2 2.0) 
  		(dim3 0) 
  		(diam03 0) 
  		(status input)
  		)
  )

;;;;;;; 9 simple hole ( setup Y-positive, no. 9) ;;;;;;;;


(assert (feature 
 		(name simple_hole_9)
  		(type hole) 
  		(quality 20.0) 
  		(tolerance 50.0) 
  		(normal y-neg) 
  		(slope 0) 
  		(dim1 1.0) 
  		(dim2 1.0) 
  		(dim3 0) 
  		(diam03 0) 
  		(status input)
  		)
  )

