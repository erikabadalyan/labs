; Lab 13: Final Review

; Q3
(define (compose-all funcs)
  (define (composer funcs current)
      (if (null? funcs) current
          (composer (cdr funcs) ((car funcs) current))
      )
    )
  (lambda (x) (composer funcs x))
)
