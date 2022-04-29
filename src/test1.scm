(begin ;; display "running test1.scm"
  ($putchar 114) ($putchar 117) ($putchar 110) ($putchar 110) ($putchar 105)
  ($putchar 110) ($putchar 103) ($putchar 32) ($putchar 116) ($putchar 101)
  ($putchar 115) ($putchar 116) ($putchar 49) ($putchar 46) ($putchar 115)
  ($putchar 99) ($putchar 109) ($putchar 10))

(begin ;; display "$putchar -- ok"
  ($putchar 36) ($putchar 112) ($putchar 117) ($putchar 116)
  ($putchar 99) ($putchar 104) ($putchar 97) ($putchar 114)
  ($putchar 32) ($putchar 45) ($putchar 45) ($putchar 32))
(begin
  ($putchar 111) ($putchar 107) ($putchar 10))

(begin ;; display "$+ -- ok"
  ($putchar 36) ($putchar 43) ($putchar 32) ($putchar 45) ($putchar 45)
  ($putchar 32))
(begin
  ($putchar ($+ 100 11)) ($putchar ($+ 50 57)) ($putchar 10))

(begin ;; display "$- -- ok"
  ($putchar 36) ($putchar 45) ($putchar 32) ($putchar 45) ($putchar 45)
  ($putchar 32))
(begin
  ($putchar ($- 120 9)) ($putchar ($- 108 1)) ($putchar 10))

(begin ;; display "$quotient -- ok"
  ($putchar 36) ($putchar 113) ($putchar 117) ($putchar 111)
  ($putchar 116) ($putchar 105) ($putchar 101) ($putchar 110)
  ($putchar 116) ($putchar 32) ($putchar 45) ($putchar 45) ($putchar 32))
(begin
  ($putchar ($quotient 335 3)) ($putchar ($quotient -107 -1)) ($putchar 10))

(begin ;; display "$* -- ok"
  ($putchar 36) ($putchar 42) ($putchar 32) ($putchar 45) ($putchar 45)
  ($putchar 32))
(begin
  ($putchar ($* 37 3)) ($putchar ($* -107 -1)) ($putchar 10))

(begin ;; display "if #f -- ok"
  ($putchar 105) ($putchar 102) ($putchar 32) ($putchar 35) ($putchar 102)
  ($putchar 32) ($putchar 45) ($putchar 45) ($putchar 32))
(if #f
    (begin
      ($putchar 101) ($putchar 114) ($putchar 114) ($putchar 111)
      ($putchar 114) ($putchar 33) ($putchar 10))
    (begin
      ($putchar 111) ($putchar 107) ($putchar 10)))

(begin ;; display "if #t -- ok"
  ($putchar 105) ($putchar 102) ($putchar 32) ($putchar 35) ($putchar 116)
  ($putchar 32) ($putchar 45) ($putchar 45) ($putchar 32))
(if #t
    (begin
      ($putchar 111)($putchar 107)($putchar 10))
    (begin
      ($putchar 101) ($putchar 114) ($putchar 114) ($putchar 111)
      ($putchar 114) ($putchar 33) ($putchar 10)))

(begin ;; display "if ($eqv? 1 2) -- ok"
  ($putchar 105) ($putchar 102) ($putchar 32) ($putchar 40) ($putchar 36)
  ($putchar 101) ($putchar 113) ($putchar 118) ($putchar 63) ($putchar 32)
  ($putchar 49) ($putchar 32) ($putchar 50) ($putchar 41)
  ($putchar 32) ($putchar 45) ($putchar 45) ($putchar 32))
(if ($eqv? 1 2)
    (begin
      ($putchar 101) ($putchar 114) ($putchar 114) ($putchar 111)
      ($putchar 114) ($putchar 33) ($putchar 10))
    (begin
      ($putchar 111)($putchar 107)($putchar 10)))

(begin ;; display "if ($eqv? 2 2) -- ok"
  ($putchar 105) ($putchar 102) ($putchar 32) ($putchar 40) ($putchar 36)
  ($putchar 101) ($putchar 113) ($putchar 118) ($putchar 63) ($putchar 32)
  ($putchar 50) ($putchar 32) ($putchar 50) ($putchar 41)
  ($putchar 32) ($putchar 45) ($putchar 45) ($putchar 32))
(if ($eqv? 2 2)
    (begin
      ($putchar 111) ($putchar 107) ($putchar 10))
    (begin
      ($putchar 101) ($putchar 114) ($putchar 114) ($putchar 111)
      ($putchar 114) ($putchar 33) ($putchar 10)))

(begin ;; display "if ($< 1 2) -- ok"
  ($putchar 105) ($putchar 102) ($putchar 32) ($putchar 40) ($putchar 36)
  ($putchar 60) ($putchar 32) ($putchar 49) ($putchar 32) ($putchar 50)
  ($putchar 41) ($putchar 32) ($putchar 45) ($putchar 45) ($putchar 32))
(if ($< 1 2)
    (begin
      ($putchar 111) ($putchar 107) ($putchar 10))
    (begin
      ($putchar 101) ($putchar 114) ($putchar 114) ($putchar 111)
      ($putchar 114) ($putchar 33) ($putchar 10)))

(begin ;; display "if ($< 2 2) -- ok"
  ($putchar 105) ($putchar 102) ($putchar 32) ($putchar 40) ($putchar 36)
  ($putchar 60) ($putchar 32) ($putchar 50) ($putchar 32) ($putchar 50)
  ($putchar 41) ($putchar 32) ($putchar 45) ($putchar 45) ($putchar 32))
(if ($< 2 2)
    (begin
      ($putchar 101) ($putchar 114) ($putchar 114) ($putchar 111)
      ($putchar 114) ($putchar 33) ($putchar 10))
    (begin
      ($putchar 111) ($putchar 107) ($putchar 10)))

(begin ;; display "if ($rib? 42) -- ok"
  ($putchar 105) ($putchar 102) ($putchar 32) ($putchar 40) ($putchar 36)
  ($putchar 114) ($putchar 105) ($putchar 98) ($putchar 63) ($putchar 32)
  ($putchar 52) ($putchar 50) ($putchar 41) ($putchar 32) ($putchar 45)
  ($putchar 45) ($putchar 32))
(if ($rib? 42)
    (begin
      ($putchar 101) ($putchar 114) ($putchar 114) ($putchar 111)
      ($putchar 114) ($putchar 33) ($putchar 10))
    (begin
      ($putchar 111) ($putchar 107) ($putchar 10)))

(begin ;; display "if ($rib? ($rib 1 2 3)) -- ok"
  ($putchar 105) ($putchar 102) ($putchar 32) ($putchar 40) ($putchar 36)
  ($putchar 114) ($putchar 105) ($putchar 98) ($putchar 63) ($putchar 32)
  ($putchar 40) ($putchar 36) ($putchar 114) ($putchar 105) ($putchar 98)
  ($putchar 32) ($putchar 49) ($putchar 32) ($putchar 50) ($putchar 32)
  ($putchar 51) ($putchar 41) ($putchar 41) ($putchar 32) ($putchar 45)
  ($putchar 45) ($putchar 32))
(if ($rib? ($rib 1 2 3))
    (begin
      ($putchar 111) ($putchar 107) ($putchar 10))
    (begin
      ($putchar 101) ($putchar 114) ($putchar 114) ($putchar 111)
      ($putchar 114) ($putchar 33) ($putchar 10)))

(begin ;; display "$getchar -- ok"
  ($putchar 36) ($putchar 103) ($putchar 101) ($putchar 116)
  ($putchar 99) ($putchar 104) ($putchar 97) ($putchar 114)
  ($putchar 32) ($putchar 45) ($putchar 45) ($putchar 32))
(begin
  ($putchar ($getchar)) ($putchar ($getchar)) ($putchar 10))

(begin ;; display "define --"
  ($putchar 100) ($putchar 101) ($putchar 102) ($putchar 105) ($putchar 110) 
  ($putchar 101) ($putchar 32)  ($putchar 45)  ($putchar 45))

(define x 32)
(define y 111)
(define z 107)

($putchar x)
($putchar y)
($putchar z)
($putchar 10)

(begin ;; display "call 0 --"
  ($putchar 99) ($putchar 97) ($putchar 108) ($putchar 108) 
  ($putchar 32) ($putchar 48) ($putchar 32) ($putchar 45) ($putchar 45)
  )

(define (f) ($putchar 32) ($putchar 111) ($putchar 107) ($putchar 10))
(f)

(begin ;; display "call 1 --"
  ($putchar 99) ($putchar 97) ($putchar 108) ($putchar 108) 
  ($putchar 32) ($putchar 49) ($putchar 32) ($putchar 45) ($putchar 45)
  )

(define (g x) ($putchar x))

(g 32)
(g 79)
(g 75)
(g 10)

  
(begin ;; display "call 2 --"
  ($putchar 99) ($putchar 97) ($putchar 108) ($putchar 108) 
  ($putchar 32) ($putchar 50) ($putchar 32) ($putchar 45) ($putchar 45)
  )

(define (h a b) (g a) (g b))
(g 32)
(h 79 75)
;(h 10 10)
(g 10)

(begin ;; display "list --"
  ($putchar 108) ($putchar 105) ($putchar 115) ($putchar 116)
  ($putchar 32) ($putchar 45) ($putchar 45))

(define (car lst) ($field0 lst))
(define (cdr lst) ($field1 lst))
(define (cons car cdr) ($rib car cdr 0)) ;; 0 for pair-type

(define lst (cons 79 (cons 75 10)))

(define (print-lst lst)
  (if ($rib? lst)
    (begin
      ($putchar (car lst))
      (print-lst (cdr lst)))
    ($putchar lst)))

(print-lst lst)

(begin  ;; mut 1 -
  ($putchar 109) ($putchar 117) ($putchar 116) ($putchar 32) ($putchar 49)
  ($putchar 32) ($putchar 45) ($putchar 32))

(define (mut a b c d)
  (set! a 32)
  (set! b 79)
  ($putchar a)
  ($putchar b)
  ($putchar c)
  ($putchar d))

(mut 65 65 75 10)

(begin ;; display "calling ($exit 0)"
  ($putchar 99) ($putchar 97) ($putchar 108) ($putchar 108)
  ($putchar 105) ($putchar 110) ($putchar 103) ($putchar 32)
  ($putchar 40) ($putchar 36) ($putchar 101) ($putchar 120)
  ($putchar 105) ($putchar 116) ($putchar 32) ($putchar 48)
  ($putchar 41) ($putchar 10))

($exit 0) ;; exit with no error
