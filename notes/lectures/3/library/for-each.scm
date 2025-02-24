
; do something for each item in a list
(define (for-each proc list)
    ; is the list empty? print done
    (cond ((null? list) "done")
        ; otherwise apply procedure to first item
        (else (proc (car list))
            ; recursively apply procedure to the rest of the list
            (for-each proc
                (cdr list)))))
