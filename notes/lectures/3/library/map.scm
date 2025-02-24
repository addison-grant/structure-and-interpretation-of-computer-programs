
(define (map procedure l)
    (if (null? l)
        nil
        (cons (procedure (car l))
            (map procedure (cdr l)))))
