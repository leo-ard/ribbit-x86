
;(define (g a b c) ($putchar a))
;(define (f x) (g x x x))
;(f 65)
(define (g x) ($putchar x))
(define (h a b) (begin (g a) (g b)))
(h 65 66)


