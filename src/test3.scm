
;(define (g a b c) ($putchar a))
;(define (f x) (g x x x))
;(f 65)
;(define (g x) ($putchar x))
;(define (h a b) (g a) (g b))
;(h 65 66)

;($putchar ($putchar 65))

(begin ;; display "call 1 --"
  ($putchar 99) ($putchar 97) ($putchar 108) ($putchar 108) 
  ($putchar 32) ($putchar 49) ($putchar 32) ($putchar 45) ($putchar 45)
  )

(define (g x) ($putchar x))

(g 32)
(g 79)
(g 75)
(g 10)

;(begin  ;; mut 2 -
;  ($putchar 109) ($putchar 117) ($putchar 116) ($putchar 32) ($putchar 50)
;  ($putchar 32) ($putchar 45) ($putchar 32))
;
;(let ((x 65) (y 75))
;  (set! x 79)
;  ($putchar x)
;  ($putchar y)) 
;
(define (f a b c d) (lambda (x) ($* ($+ a b) ($+ c x))))
(f 1 2 3 4)


