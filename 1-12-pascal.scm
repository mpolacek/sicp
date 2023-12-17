; Pascal's triangle.

(define (pascal n k)
 (cond ((or (= k 0) (= n k)) 1)
       ((or (< n k) (< k 0)) 0)
       (else (+ (pascal (- n 1) (- k 1))
	        (pascal (- n 1) k)))))

(define (pp n) (p n 0))
(define (p n k)
 (if (> k n) 0
  (and (display (pascal n k)) (display " ") (p n (+ k 1)))))

(pp 0) (newline)
(pp 1) (newline)
(pp 2) (newline)
(pp 3) (newline)
(pp 4) (newline)
(pp 5) (newline)
(pp 11) (newline)
