;; SICP 1.1.4

(define (square x) (* x x))

(define (sum-of-squares x y)
 (+ (square x) (square y)))

(define (f a)
 (sum-of-squares (+ a 1) (* a 2)))

;; Print the result.
(display (f 5)) (newline)

;; SICP 1.1.6
(define (abs x)
 (cond ((> x 0) x)
       ((= x 0) 0)
       ((< x 0) (- x))))

(display (abs 42)) (newline)
(display (abs 0)) (newline)
(display (abs -5)) (newline)

(define (abs2 x)
 (cond ((< x 0) (- x))
       (else x)))

(display (abs2 -5)) (newline)

(define (abs3 x)
 (if (< x 0)
     (- x)
     x))

(display (abs3 -5)) (newline)
