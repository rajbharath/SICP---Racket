#lang racket

(define (square x) (* x x))

(define (big2 x y) (if (> x y) x y))

(define (big3 x y z) (cond ((and (> x y) (> x z)) x)
                           ((and (> y x) (> y z)) y)
                           (else z)
                           ))

(define (second_big3 x y z) (cond ((= x (big3 x y z)) (big2 z y))
                                  ((= y (big3 x y z)) (big2 x z))
                                  (else (big2 x y))
                                 ))

(define (sum_of_squares x y) (+ (square x) (square y)))

(define (sum_of_square_2_large x y z) (sum_of_squares (big3 x y z) (second_big3 x y z)))

(sum_of_square_2_large 1 2 3)