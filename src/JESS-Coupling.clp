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
 		(name simple_hole_10)
  		(type hole) 
  		(quality 20.0) 
  		(tolerance 50.0) 
  		(normal z-neg) 
  		(slope 0) 
  		(dim1 3.0) ;Hole Diameter
  		(dim2 6.0) ;Hole Length
  		(dim3 0) 
  		(diam03 0) 
  		(status input)
  		)
  )
;********************************************************
;;;;;;; 1 Rectangular slot ( setup Z-neg, no. 1) ;;;;;;;;


(assert (feature 
  		(name rectangular_slot_4) 
  		(type slot) 
  		(quality 20.0) 
  		(tolerance 50.0) 
  		(normal z-neg) 
  		(slope 0) 
  		(dim1 2.0) ;depth for slot
  		(dim2 2.0) ;width for topface and slot
  		(dim3 8.0) ;length for slot
  		(diam03 0) 
  		(status input)
  		)
  )	

;;;;;;; 2 Rectangular slot ( setup Z-neg, no. 1) ;;;;;;;;


(assert (feature 
  		(name rectangular_slot_5) 
  		(type slot) 
  		(quality 20.0) 
  		(tolerance 50.0) 
  		(normal z-neg) 
  		(slope 0) 
  		(dim1 2.0) 
  		(dim2 2.0) 
  		(dim3 8.0) 
  		(diam03 0) 
  		(status input)
  		)
  )



;;;;;;; 3 Rectangular slot ( setup Z-neg, no. 1) ;;;;;;;;

(assert (feature 
  		(name rectangular_slot_9) 
  		(type slot) 
  		(quality 20.0) 
  		(tolerance 50.0) 
  		(normal z-neg) 
  		(slope 0) 
  		(dim1 3.0) 
  		(dim2 2.0) 
  		(dim3 8.0) 
  		(diam03 0) 
  		(status input)
  		)
  )	

;*********************************************************

;;;;;;; 4 Rectangular slot ( setup Z-Pos, no. 2) ;;;;;;;;


(assert (feature 
  		(name rectangular_slot_7) 
  		(type slot) 
  		(quality 20.0) 
  		(tolerance 50.0) 
  		(normal z-pos) 
  		(slope 0) 
  		(dim1 2.0) ;z
  		(dim2 2.0) ;x
  		(dim3 8.0) ;y
  		(diam03 0) 
  		(status input)
  		)
  )	

;;;;;;; 5 Rectangular slot ( setup Z-neg, no. 2) ;;;;;;;;


(assert (feature 
  		(name rectangular_slot_8) 
  		(type slot) 
  		(quality 20.0) 
  		(tolerance 50.0) 
  		(normal z-pos) 
  		(slope 0) 
  		(dim1 2.0) ;z
  		(dim2 2.0) ;x
  		(dim3 8.0) ;y
  		(diam03 0) 
  		(status input)
  		)
  )

;**********************************************************

;;;;;;; 6 Rectangular pocket ( setup Z-neg, no. 1) ;;;;;;;;


(assert (feature 
		(name rectangular_slot_11)
		(type slot) 
		(quality 20.0)
		(tolerance 50.0)
		(normal z-neg) 
		(slope 0) 
		(dim1 0.5) ;Depth
		(dim2 1.0) ;Width
		(dim3 8.0) ;Length
		(diam03 0)
		(status input)
		)
)


;;;;;;; 7 Rectangular pocket ( setup Y-neg, no. 1) ;;;;;;;;


(assert (feature 
		(name rectangular_slot_12)
		(type slot) 
		(quality 20.0)
		(tolerance 50.0)
		(normal Y-neg) 
		(slope 0) 
		(dim1 0.5) 
		(dim2 1.0)
		(dim3 8.0)
		(diam03 0)
		(status input)
		)
)
;***********************************************************


















