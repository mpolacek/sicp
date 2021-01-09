;; SICP 1.1.7 Square Roots by Newton's Method.

(define eps 0.001)

;; Exercise 1.6
(define (new-if predicate then-clause else-clause)
 (cond (predicate then-clause)
       (else else-clause)))

(define (good-enough? guess x)
 (< (abs (- (square guess) x)) eps))

(define (average x y)
 (/ (+ x y) 2))

(define (improve guess x)
 (average guess (/ x guess)))

(define (sqrt-iter guess x)
 (if (good-enough? guess x)
;; Would never finish: recursively calls sqrt-iter and never new-if.
;; (new-if (good-enough? guess x)
	 guess
	 (sqrt-iter (improve guess x) x)))

(define (nsqrt x)
 (sqrt-iter 1.0 x))

(display (nsqrt 2)) (newline)
(display (nsqrt 3)) (newline)
(display (nsqrt 9)) (newline)
