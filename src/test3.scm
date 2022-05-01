
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
;($putchar 65)
;(define (car x) (field0 x))
;(define (cdr x) (field1 x))
;(define (cons a b) ($rib a b 0))
;(define (pair? o) (and (rib? o) (eqv? (field2 o) 0)))
;;
;(define (print-lst lst)
;  (if (pair? lst)
;    (begin
;      (putchar (car lst))
;      (print-lst (cdr lst))
;      ) ))


;(print-lst (string->list "hello0009oooooooooo"))
;
;  (if (rib? lst)
;    (begin
;      (putchar 65)
;      (putchar (car lst))
;      (print-lst (cdr lst)))
;    (putchar 66))
;  )
;;
;
;(define lst (cons 65 (cons 66 '())))
;(print-lst lst)

;(define (fact n)
;  (if (< n 2)
;      1
;      (* n (fact (- n 1)))))
;(putchar (fact 5)) ;; should print x
;
;(define (raw-display str)
;  (print-lst ($field0 str)))

;(raw-display "cc 1 -")

; (define (f) (lambda (x) (lambda (y) ($putchar ($+ x y)))))
; ($putchar (((f) 9) 70))
; ($putchar (((f) 5) 70))

 ;(string->symbol "hello")

;(display (symbol->string (cadr symtbl)))
;(number->string 42)
;(number->string-aux 42 '())

; (lambda (x)
;  (lambda ()
;    (lambda () x)))

;($rib 
;  (lambda ($self x) 
;    ($rib (lambda ($self)
;            ($rib (lambda ($self) 
;                    ($field1 $self)) 
;                  x 1)) 
;          x 1))
;  0 1))

;($rib 
;  (lambda ($self x) 
;    ($rib 
;      (lambda ($self) 
;        ($rib 
;          (lambda ($self) x) 
;          ($field1 $self) 
;          1)) 
;      x 1)) 
;  0 1))

;(define (sum n)
;  (if ($< n 1)
;      0
;      (+ n (sum ($- n 1)))))


(define (sum n)
  (let ((comp ($< n 1))
        (com2 1)
        (hello 34))
    (if comp
      0
      (+ n (sum ($- n com2))))))

(sum 1)

(define (h a b) (putchar a) (putchar b))

(h 65 66)



;(if (equal? 'hello symbtl)
;  ($putchar 65)
;  ($putchar 66))


;(if (equal? 'hello (car symtbl))
;  (putchar 65)
;  (putchar 66))
;(if (equal? "hello" (symbol->string (car symbl)))
;  (putchar 65)
;  (putchar 66))

;(if  (eqv? 'hello (string->symbol "hello"))
;  (putchar 65)
;  (putchar 66))




