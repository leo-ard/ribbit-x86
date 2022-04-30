
;(define (g a b c) ($putchar a))
;(define (f x) (g x x x))
;(f 65)
;(define (g x) ($putchar x))
;(define (h a b) (g a) (g b))
;(h 65 66)

;($putchar ($putchar 65))

;(begin ;; display "call 1 --"
;  ($putchar 99) ($putchar 97) ($putchar 108) ($putchar 108) 
;  ($putchar 32) ($putchar 49) ($putchar 32) ($putchar 45) ($putchar 45)
;  )
;
;(define (g x) ($putchar x))
;
;(g 32)
;(g 79)
;(g 75)
;(g 10)

;(begin  ;; mut 2 -
;  ($putchar 109) ($putchar 117) ($putchar 116) ($putchar 32) ($putchar 50)
;  ($putchar 32) ($putchar 45) ($putchar 32))
;
;(let ((x 65) (y 75))
;  (set! x 79)
;  ($putchar x)
;  ($putchar y)) 
;
;(define (f a b c d) (lambda (x) ($* ($+ a b) ($+ c x))))
($putchar 65)
(define (car x) (field0 x))
(define (cdr x) (field1 x))
(define (cons a b) ($rib a b 0))
(define (pair? o) (and (rib? o) (eqv? (field2 o) 0)))
;
(define (print-lst lst)
  (putchar 65)
  (if (pair? lst)
    (putchar 65)
    (putchar 66))
  (putchar 67)

  (if (rib? lst)
    (begin
      (putchar 65)
      (putchar (car lst))
      (print-lst (cdr lst)))
    (putchar 66))
  )
;

(define lst (cons 65 (cons 66 '())))
(print-lst lst)
;
;(define (raw-display str)
;  (print-lst ($field0 str)))

;(raw-display "cc 1 -")

; (define (f) (lambda (x) (lambda (y) ($putchar ($+ x y)))))
; ($putchar (((f) 9) 70))
; ($putchar (((f) 5) 70))


