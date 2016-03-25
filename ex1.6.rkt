#lang racket

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(new-if (= 4 5) 0 5)

(new-if (= 4 4) 0 5)

(define (square x) (* x x))

(define (good-enough? guess x)
  (< (abs (- x (square guess))) 0.001))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))


(define (sqrt x) (sqrt-iter 1.0 x))

(sqrt 4)

;this program will go into infinite stack. because racket uses applicative order. So before applying the operator , all of the operands are evaluated.