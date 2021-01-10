;; Random stuff in Scheme.

(define (fac n)
 (if (= n 1)
  1
  (* n (fac (- n 1)))))

(display (fac 1)) (newline)
(display (fac 2)) (newline)
(display (fac 3)) (newline)
(display (fac 4)) (newline)
(display (fac 5)) (newline)
(display (fac 6)) (newline)
(display (fac 7)) (newline)

(define (fib n)
 (cond ((= n 0) 0)
       ((= n 1) 1)
       (else (+ (fib (- n 1)) (fib (- n 2))))))

(display (fib 2)) (newline)
(display (fib 3)) (newline)
(display (fib 4)) (newline)
(display (fib 5)) (newline)
(display (fib 6)) (newline)
(display (fib 7)) (newline)
(display (fib 8)) (newline)
(display (fib 9)) (newline)
(display (fib 10)) (newline)
(display (fib 11)) (newline)
(display (fib 12)) (newline)
(display (fib 13)) (newline)
