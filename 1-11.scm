; Exercise 1.11.

; Recursive:
(define (foo n)
 (cond ((< n 3) n)
       (else (+ (foo (- n 1))
	        (* 2 (foo (- n 2)))
		(* 3 (foo (- n 3)))))))

(display (foo 1)) (newline)
(display (foo 2)) (newline)
(display (foo 3)) (newline)
(display (foo 4)) (newline)
(display (foo 5)) (newline)
(display (foo 6)) (newline)
(display (foo 11)) (newline)

; Iterative:
(define (foo2 n)
 (if (< n 3)
     n
     (foo-iter 2 1 0 (- n 2))))

(define (foo-iter prev pprev ppprev n)
 (if (= n 0)
     prev
     (foo-iter (+ prev (* 2 pprev) (* 3 ppprev))
		prev
		pprev
		(- n 1))))

(display (foo2 1)) (newline)
(display (foo2 2)) (newline)
(display (foo2 3)) (newline)
(display (foo2 4)) (newline)
(display (foo2 5)) (newline)
(display (foo2 6)) (newline)
(display (foo 11)) (newline)
