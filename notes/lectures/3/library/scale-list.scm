; CDR-ing down a list
(define (scale-list s l)
    (if (null? l)
        nil
        (cons (* (car l) s)
            (scale-list s (cdr l)))))
