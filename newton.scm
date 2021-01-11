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
;; new-if is not a special form anymore.
      guess
      (sqrt-iter (improve guess x) x)))

(define (nsqrt x)
 (sqrt-iter 1.0 x))

(display (nsqrt 2)) (newline)
(display (nsqrt 3)) (newline)
(display (nsqrt 9)) (newline)
(display (nsqrt 0.001)) (newline)

;; Exercise 1.7
;; good-enough? fails for small and large numbers:

;; If GUESS were 0.001, this...
;; (nsqrt 0.001)
;; ...would evaluate to .001, which is wrong; should be 0.031622.
;; 0.001^2 = 0.000001
;; 0.000999 < eps

;; Very large numbers:
(display (nsqrt 1e48)) (newline)
;; finishes, but...
;; (nsqrt 1e49)
;; ...does not.  (improve guess x) keeps yielding the same result.

;; Another approach: watch how GUESS changes between iterations and
;; stop when the difference is a small fraction of GUESS.
(define (good-enough-alt? guess x)
 (< (abs (- guess (improve guess x))) (/ guess 1000)))

;; Best:
(define (good-enough-best? guess x)
 (= (improve guess x) guess))

(define (sqrt-iter-alt guess x)
 (if (good-enough-alt? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (nsqrt-alt x)
 (sqrt-iter-alt 1.0 x))

(display (nsqrt-alt 2)) (newline)
(display (nsqrt-alt 3)) (newline)
(display (nsqrt-alt 9)) (newline)
(display (nsqrt-alt 1e48)) (newline)
;; 1e49 still doesn't work :(
(display (nsqrt-alt 0.001)) (newline)
