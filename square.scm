;; SICP 1.1.4

(define (square x) (* x x))

(define (sum-of-squares x y)
 (+ (square x) (square y)))

(define (f a)
 (sum-of-squares (+ a 1) (* a 2)))

;; Print the result.
(display (f 5)) (newline)
