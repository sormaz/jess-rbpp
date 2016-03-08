(require rbpp-init)
(import edu.ohiou.mfgresearch.labimp.gtk3d.*)

; Recognization rule for Blind-ball-end-slot
(defrule Recognize-Blind-Open-Ball-end-Slot
    ?f <- (feature (name ?f1) (type slot) (dim1 ?depth) (dim2 ?width) 
        (bottomRadius ?bR&: (= ?bR (/ ?width 2))) (positiveSweepLength nil) (negativeSweepLength nil)
        (status classify))
    =>
    (modify ?f (status input) (sub-type Blind-Open-Ball-end-Slot)))

; Process rule for Ball-end-slot
(defrule Process-Blind-Open-Ball-End-Slot
    ?f <- (feature (name ?f1) (type slot) (sub-type Blind-Open-Ball-end-Slot) (status input))
    =>
    (modify ?f (status process))
    (assert (operation (feature ?f1) (process ball-end-slot-end-milling)))
    (assert (operation (feature ?f1) (process ball-end-slot-side-milling)))
    )

;Tool rule for Ball-end-Slot
(defrule tool-rule-ball-end-slot-end-milling
    ?f <- (feature (name ?f1) (dim1 ?d1) (dim2 ?d2) (dim3 ?d3) (bottomRadius ?br) (status process))
    ?op <- (operation (feature ?f1) (process ball-end-slot-end-milling) (machine ?m1) (tool nil))
    (tool (name ?n1) (for-process ball-end-slot-end-milling) (diameter ?d4&:(call Gtk epsilonEquals ?br ?d4))
        (length ?length&:(> ?length ?d1)))
    (machine (name ?m1) (tool-list $?tools&: (member$ ?n1 $?tools)))
    =>
    (modify ?f (status done))
    (modify ?op (tool ?n1)))

(defrule tool-rule-ball-end-slot-side-milling
    ?f <- (feature (name ?f1) (dim1 ?d1) (dim2 ?d2) (dim3 ?d3) (bottomRadius ?br) (status process))
    ?op <- (operation (feature ?f1) (process ball-end-slot-side-milling) (machine ?m1) (tool nil))
    (tool (name ?n1) (for-process ball-end-slot-side-milling) (width ?d2))
    (machine (name ?m1) (tool-list $?tools&: (member$ ?n1 $?tools)))
    =>
    (modify ?f (status done))
    (modify ?op (tool ?n1))
    )

;""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

(defrule Recognize-Blind-Open-Bull-end-Slot
    ?f <- (feature (name ?f1) (type slot) (sub-type ?subType) (dim1 ?depth) (dim2 ?width) 
        (bottomRadius ?bR&: (< ?bR (/ ?width 2))) (positiveSweepLength nil) (negativeSweepLength nil) (status input))
    
    =>
    (modify ?f (status process))
    (modify ?f (sub-type Blind-Open-Bull-end-Slot)))

(defrule Process-Blind-Open-Bull-End-Slot
    ?f <- (feature (name ?f1) (type slot) (sub-type Blind-Open-Slot) (dim1 ?depth) (dim2 ?width) 
        (bottomRadius ?bR&: (< ?bR (/ ?width 2))) (positiveSweepLength nil) (negativeSweepLength nil) (status process))
    =>
    (modify ?f (status done))
    (assert (operation (feature ?f1) (process end-milling-slotting)))
    (assert (operation (feature ?f1) (process side-milling)))
    )

(defrule Blind-Half-Closed-Slot
    ?f <- (feature (name ?f1) (type Blind-Open) (dim1 Yes) (positiveSweepLength ?psl)
        (negativeSweepLength 0) (status input))
    
    =>
    (modify ?f (status process))
    (assert (operation (feature ?f1) (process end-milling-slotting))))

(defrule Through-Half-Closed-Slot
    ?f <- (feature (name ?f1) (type Blind-Open) (dim1 No) (positiveSweepLength ?psl)
        (negativeSweepLength 0) (status input))
    
    =>
    (modify ?f (status process))
    (assert (operation (feature ?f1) (process end-milling-slotting))))

