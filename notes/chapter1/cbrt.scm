
(define (cbrt x) (cbrt-iter 2.0 1.0 x))

(define delta 0.0001)

(define (cbrt-iter x0 x1 x)
  (if (not-changing? x0 x1)
    x1
    (cbrt-iter x1 (improve x1 x) x)))

(define (not-changing? x0 x1)
  (< (rel-diff x0 x1) delta))

(define (average x y) (* 0.5 (+ x y)))

(define (rel-diff x0 x1) (abs (/ (- x0 x1) (average x0 x1))))

(define (improve y x)
  (/ (+ (/ x (* y y)) (* 2 y)) 3.0))

