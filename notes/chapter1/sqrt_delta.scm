
(define delta 0.0001)

(define (not-changing? x0 xn)
  (< (abs (/ (- xn x0) x0)) delta))

(define (average a b) (* 0.5 (+ a b)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (sqrt-delta-iter guess1 guess2 x)
  (if (not-changing? guess1 guess2)
    guess2
    (sqrt-delta-iter guess2 (improve guess2 x) x)))

(define (sqrt-delta x) (sqrt-delta-iter (/ 1 delta) 1 x))
