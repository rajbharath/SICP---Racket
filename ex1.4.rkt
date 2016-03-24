#lang racket

(define (a-plus-abs-b a b)
  ((if (> b 0)
       +
       -) a b))

(a-plus-abs-b 1 2)

(a-plus-abs-b 1 -2)

;if block decides the operation between a & b. I wonder how an operator can be a result of if expression.