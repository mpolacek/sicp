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

;; Exercise 1.2
(define r (/
	   (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5)))))
	   (* 3 (- 6 2) (- 2 7))))
(display r) (newline)

;; Exercise 1.3
(define (foo a b c)
 (if (> a b)
     (if (> b c)
         (+ (square a) (square b))
         (+ (square a) (square c)))
     (if (> a c)
         (+ (square b) (square a))
	 (+ (square b) (square c)))))

;; All should yield 13.
(display (foo 1 2 3)) (newline)
(display (foo 1 3 2)) (newline)
(display (foo 2 1 3)) (newline)
(display (foo 2 3 1)) (newline)
(display (foo 3 2 1)) (newline)
(display (foo 3 1 2)) (newline)
