(define (has-divisor? n k)
  (cond ((< k 2) #false)
        ((= (modulo n k) 0) #true)
        (else (has-divisor? n (- k 1)))
  )
)

(define (has-divisor-2? n k)
  (define (div? n d)
       (and (> d 0) (= (remainder n d) 0))
  )
  (cond ((< k 2) #false)
        ((= (modulo n k) 0) #true)
        (else (has-divisor? n (- k 1)))
  )
)

(define (prime? n)
  (not (has-divisor? n (ceiling (sqrt n))))
)

(define (prime-2? n)
  (not (has-divisor-2? n (ceiling (sqrt n))))
)
