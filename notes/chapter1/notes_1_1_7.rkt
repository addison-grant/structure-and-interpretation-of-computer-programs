#lang sicp

;; Square-root procedure

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (square x) (* x x))

(define (improve guess x)
  (* 0.5 (+ guess (/ x guess))))
  
(define (sqrt x) (sqrt-iter 1 x))


;; Crashing verison of Sqrt

;; define "if" as a combination (instead of a "special form")
(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt-iter-2 guess x)
  ; Careful, this will crash due to evaluating all the subexpressions
  ; with the new-if (instead of short-circuiting provided by the special form)
  (new-if (good-enough? guess x)
      guess
      (sqrt-iter-2 (improve guess x) x)))

(define (sqrt-INF x) (sqrt-iter-2 1 x))
