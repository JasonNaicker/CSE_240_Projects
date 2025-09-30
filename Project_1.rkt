#lang scheme
;Jason Naicker, 9/2/2025

;FUNCTIONS
(define AND(lambda (a b) ;define AND gate
                 (if (and (eq? a 1) (eq? b 1))
                    1
                  0 
                  ) ;end of if
           ) ;end of lambda
) ;end of define

(define XOR(lambda (a b) ;define XOR gate
                 (if (> (abs (- a b)) 0)
                    (abs (- a b))
                  0
                  ) ;end of if
           ) ;end of lambda
) ;end of define

(define OR(lambda (a b) ;define OR gate
                  (if (or (eq? a 1) (eq? b 1))
                    1
                  0
                  ) ;end of if
           ) ;end of lambda
) ;end of define

(define sumBit(lambda(x a b)
        (XOR (XOR a b) x)
          
    ) ;end of lambda
) ;end of define
(define carryOut(lambda(x a b)
        (OR (AND a b) (AND (OR a b) x))
    ) ;end of lambda
) ;end of define

(define bitAdder(lambda(x a b)
     (cons (sumBit x a b) (carryOut x a b))
    ) ;end of lambda
) ;end of define
;-----------------------------------------------

;METHOD CALLS
(bitAdder 0 0 0)
(bitAdder 0 0 1)
(bitAdder 0 1 0)
(bitAdder 0 1 1)
(bitAdder 1 0 0)
(bitAdder 1 0 1)
(bitAdder 1 1 0)
(bitAdder 1 1 1)

;OUTPUT
;(0 . 0)
;(1 . 0)
;(1 . 0)
;(0 . 1)
;(1 . 0)
;(0 . 1)
;(0 . 1)
;(1 . 1)