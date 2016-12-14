;Collaborators: Brooke Werner, Sooyoung Kim, Alana Zakroczemski
;Racket Dialect: Pretty Big

;sum of list
(define (sum elemList)
  (if
    (null? elemList)
    0
    (+ (car elemList) (sum (cdr elemList)))
  )
)

;modifies the list to contain only factors
(define (makelist n)
  (build-list n (lambda (x)
                (if (= x 0)
                    (* x 1)
                    (if (= (modulo n x) 0)
                        (* x 1)
                        (* x 0)
                    )
                 )
                 )
  )
)

(display "Enter a number: \n")

(define inputNum (read))
(display "\n")

;to help print nicely
(define (numbers-with-spaces nums1 )
  (display nums1)
  (display "\n")
  )

;tests if the number is perfect
(define ( perfect theNum startNumb)
  (if (= (sum (makelist theNum)) theNum)
      (begin (display (string-append (number->string theNum) " ")
       )
       (recursePerfect (+ theNum 1) (+ startNumb 1))
       )
       (recursePerfect (+ theNum 1) startNumb)
  )
)

(define startNum 1)

(define (recursePerfect theNum startNumb)
  (if (not (= (- startNumb 1) inputNum))
      (perfect theNum startNumb)
    )
  )

(display "perfect numbers requested: \n")
(recursePerfect 6 startNum)


(display "\n")
(display "\n")
(display "part 2:")
(display "\n")
;to help print nicely
(define (print-abundant n)
  (display n)
  (display ": abundant ")
)

;to help print nicely
(define (print-deficient n)
  (display n)
  (display ": deficient ")
 )

;to help print nicely
(define (print-perfect n)
  (display n)
  (display ": perfect ")
)

;tests for perfection, abundance, or deficience
(define (test n)
  (if (= (sum (makelist n)) n)
    (print-perfect n)
    (if (> (sum (makelist n)) n)
        (print-abundant n)
        (print-deficient n)
    )
  )
)


;prints numbers 2-1000 and sees whether it is perfect, abundant, or deficient 
(define this-is-a-list(build-list 1001 (lambda (x)
                   (if (= x 0)
                       (* x 1)
                       (if (= x 1)
                           (* x 1)
                           (test x)))
                   )
            )
)



