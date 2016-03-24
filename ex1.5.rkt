#lang racket

(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 p)

;This is normal order evaluation. in applicative order of evaluation this will result in stack overflow error