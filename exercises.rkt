#lang racket

(+ 5 3 4)
(- 9 1)
(/ 6 2)
(+ (* 2 4)(- 4 6))
(define a 3)
(define b (+ a 1))
(+ a b (* a b))
(= a b)
(if (and (>  b a) (< b (* a b)))
    b
    a)
(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))
(+ 2 (if (> b a) b a))
(* (cond((> a b) a)
        ((< a b) b)
        ( else   -1))
   (+ a 1))

(+ 4 5)
(define a1 3)
(define b1 4)
(+ a1 b1)

(define (square x) (* x x))
(square 5)
(define (sum_of_square x y) (+ (square x) (square y)))

(sum_of_square 1 2)

(* 1 2 3)

(/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5))))) (* 3 (- 6 2) (- 2 7)))

(define (big x  y) (cond((> x y) x)
                        (else y)
                         ))
(big 1 2)

(define (sum_of_sqr_two_larger x y z) (+ z y x))


