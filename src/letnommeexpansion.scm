(define (expand-expr expr)
  (cond ((pair? expr)
         (let ((first (car expr)))
           (cond ((eqv? 'let)
                  (let ((x (cadr expr)))
                    (if (symbol? x) ;; named let?
                        (expand-expr
                          (let ((bindings (caddr expr)))
                            (cons
                             (cons
                              'letrec
                              (cons (cons
                                     (cons x
                                           (cons (cons 'lambda
                                                       (cons (map car bindings)
                                                             (cdddr expr)))
                                                 '()))
                                     '())
                                    (cons x
                                          '())))
                             (map cadr bindings))))
                         (let ((bindings x))
                           (if (pair? bindings)
                               (cons 'let
                                     (cons (map (lambda (binding)
                                                  (cons (car binding)
                                                        (cons (expand-expr
                                                               (cadr binding))
                                                              '())))
                                                bindings)
                                           (cons (expand-body (cddr expr))
                                                 '())))
                               (expand-body (cddr expr))))))))))))
