;(in-package :ops)

(require rbpp-init)

(assert (part
    	(material carbon-steel)
    	(batch-size 1000.0)
    	(x-dim 16)
   		(y-dim 12)
    	(z-dim 8)
    	)
)

(assert (feature
    	(name fx1)
    	(type topface)
    	(normal x-pos)
    	(dim2 8)
    	(dim1 12)
    	(status input) 
    	(quality 2) 
    	)
)	

(assert (feature
    	(name fx2)
    	(type topface)
    	(normal x-neg)
    	(dim2 8)
    	(dim1 12)
    	(status input)
    	(quality 2)
    	)
)

(assert (feature
    	(name fy1)
    	(type topface)
    	(normal y-pos)
    	(dim1 16)
    	(dim2 8)
    	(status solved)
    	(quality 2)
    	)
)

(assert (feature
    	(name fy2)
    	(type topface)
    	(normal y-neg) 
    	(dim1 16)
    	(dim2 8)
    	(status solved)
    	(quality 2)
    	)
)

(assert (feature
    	(name fz1)
    	(type topface)
    	(normal z-pos)
    	(dim1 16)
    	(dim2 12)
    	(status input)
    	(quality 5)
)	)

(assert (feature
    	(name fz2)
    	(type topface)
    	(normal z-neg)
    	(dim1 16)
    	(dim2 12)
    	(status input)
    	(quality 5)
    	)
)

(assert (feature
    	(name fz1)
    	(type topface)
    	(normal z-pos) 
    	(dim1 16)
    	(dim2 12)
    	(status input)
    	(quality 5)
    	)
)

(assert (feature
    	(name h1)
    	(type hole)
    	(normal z-pos)
    	(dim1 1.0)
    	(dim2 8)
    	(status input) 
    	(quality 20)
    	(tolerance 5)
    	)
)

(assert (feature
    	(name n1)
    	(type slot)
    	(normal x-pos)
    	(dim1 3)
    	(dim2 2)
    	(dim3 12)
    	(status input)
    	(quality 2)
    	)
)

(assert (feature
    	(name n2) 
    	(type slot)
    	(normal x-pos)
    	(dim1 3) 
    	(dim2 1)
    	(dim3 12)
    	(status input)
    	(quality 2)
    	)
)

(assert (feature
    	(name h2)
    	(type hole)
    	(normal z-pos)
    	(dim1 1)
    	(dim2 8)
    	(status input)
    	(quality 20)
    	(tolerance 5)
    	)
)

(assert (feature
    	(name n3)
    	(type slot)
    	(normal z-pos)
    	(dim1 2)
    	(dim2 2)
    	(dim3 12)
    	(status input) 
    	(quality 2)
    	)
)

(assert (intersect 
    	(first h1)
    	(second n1)
    	)
)

(assert (intersect
    	(first h2)
    	(second n3)
    	)
)

(assert (opposite-direction
    	(first x-pos)
    	(second x-neg)
    	)
)

(assert (opposite-direction
    	(first y-pos)
    	(second y-neg)
    	)
)

(assert (opposite-direction
   	(first z-pos)
   	(second z-neg)
   	)
)

(assert (open-from
    	(domain h1)
    	(range fz1)
    	)
)

(assert (open-from
    	(domain n1)
    	(range fx1)
    	)
)

(assert (open-from
    	(domain n2)
    	(range n1)
    	)
)

(assert (open-from
    	(domain h2)
    	(range fz1)
    	)
)

(assert (open-from
    	(domain n3)
    	(range fz1)
    	)
)

(assert (perpendicular
    	(domain h1)
    	(range fz1)
    	)
)