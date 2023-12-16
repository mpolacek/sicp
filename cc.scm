; Counting change.

(define (count-change amount)
 (cc amount 5))

(define (cc amount kinds)
 (cond ((= amount 0) 1)
       ((or (< amount 0) (= kinds 0)) 0)
       (else (+ (cc amount
		    (- kinds 1))
	        (cc (- amount
		       (first-denomination kinds))
		    kinds)))))
(define (first-denomination kinds)
 (cond ((= kinds 1) 1)
       ((= kinds 2) 5)
       ((= kinds 3) 10)
       ((= kinds 4) 25)
       ((= kinds 5) 50)))

(display (count-change 100)) (newline)
