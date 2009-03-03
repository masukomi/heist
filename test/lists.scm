(assert (eqv? '() '()))
(assert (not (eqv? '(5) '(5))))

(assert (null? '()))
(assert (list? '()))
(assert (not (pair? '())))

(define foo-list (list (+ 3 2) (* 4 5) 6))
(assert (not (eqv? '(5 20 6) foo-list)))
(assert (equal? '(5 20 6) foo-list))

(define bar-list (cons 12 foo-list))
(assert (equal? '(12 5 20 6) bar-list))
(assert (equal? '(5 20 6) foo-list))
(assert-equal 4 (length bar-list))
(assert-equal 3 (length foo-list))

(assert-equal 5 (car foo-list))
(assert-equal '(20 6) (cdr foo-list))
(assert-equal 20 (cadr foo-list))
(assert-equal 6 (caddr foo-list))

(define eggman '(you (walrus (hurt the) one) ((you) love)))
(assert-equal '(hurt the) (cadadr eggman))

(assert (null? (cdddr eggman)))
(assert (null? '()))
(assert (list? eggman))
(assert (pair? eggman))
(assert (not (null? eggman)))

(define my-pair (cons 'foo 'bar))
(assert (pair? my-pair))
(assert (not (list? my-pair)))
(assert (not (null? my-pair)))

(set-car! my-pair 27)
(set-cdr! my-pair (cons 64 '()))
(assert (list? my-pair))
(assert (equal? '(27 64) my-pair))
(assert-equal 2 (length my-pair))

; TODO fix this
; (assert-raise SyntaxError ())
