

(define (main args)
  
    (let ((args (if (symbol? args) (symbol->string args) args)))

      (map (lambda (x) (print "($putchar " (char->integer x) ") ")) (string->list args))))

(main (read))


