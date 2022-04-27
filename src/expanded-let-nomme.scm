(set! extract-exports
  (lambda (program)
    ((let ((loop (quote #f)))
          (begin
            (set! loop
              (lambda (lst rev-exprs exports)
                (if (pair? lst) 
                    (let ((first (car lst)))
                         (if (if (pair? first)
                                 (eqv? (car first) (quote export))
                                 (quote #f))
                             (loop (cdr lst)
                                   rev-exprs
                                   (append (cdr first)
                                           (let ((_ exports))
                                                (if _ _ (quote ())))))
                             (loop (cdr lst)
                                   (cons first rev-exprs)
                                   exports)))
                    (cons (reverse rev-exprs) exports))))
            loop))
     program
     (quote ())
     (quote #f))))
