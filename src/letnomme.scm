(let foo ((x 10))
  (cond ((> x 0)
         (display "yeehaw")
         (foo (- x 1)))))
