
;(define (g a b c) ($putchar a))
;(define (f x) (g x x x))
;(f 65)
;(define (g x) ($putchar x))
;(define (h a b) (g a) (g b))
;(h 65 66)

;($putchar ($putchar 65))
(define (pure)
  (pp global))

(define (lambda2args a b c d)

  (set! a 65)
  (set! b 66)
  ($putchar a)
  ($putchar b)
  ($putchar c)
  ($putchar d))


(define (hello a b)
  (set! a 10)
  (set! b 20)
  (pp a)
  (pp b)
  
  )


(hello 42)
(pure)
(lambda2args)


