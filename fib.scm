(define (fib_slow n)
 (cond ((= n 0) 0)
       ((= n 1) 1)
       (else (+ (fib_slow (- n 1))
	        (fib_slow (- n 2))))))

(display (fib_slow 6)) (newline)
(display (fib_slow 7)) (newline)

(define (fib n)
 (fib-iter 1 0 n))

(define (fib-iter a b count)
 (if (= count 0)
     b
     (fib-iter (+ a b) a (- count 1))))

(display (fib 6)) (newline)
(display (fib 7)) (newline)
