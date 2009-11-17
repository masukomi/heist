(assert (= 42 42))
(assert (= 42 42.0))

(assert (number? 42))
(assert (not (number? #t)))
(assert (complex? 2+3i))
(assert (not (real? 2+3i)))
(assert (real? 3.1416))
(assert (real? 22/7))
(assert (real? 42))
(assert (not (rational? 2+3i)))
(assert (not (rational? 3.1416)))
(assert (rational? 22/7))
(assert (not (integer? 22/7)))
(assert (integer? 42))

(assert (zero? 0))
(assert (not (zero? 1)))
(assert (odd? 1))
(assert (not (odd? 2)))
(assert (even? 6))
(assert (not (even? 7)))
(assert (positive? 5))
(assert (not (positive? -4)))
(assert (negative? -13))
(assert (not (negative? 0)))

(assert-equal 9 (max 8 2 7 3 9 5))
(assert-equal 2 (min 8 2 7 3 9 5))

(assert (exact? 8))
(assert (exact? 4/3))
(assert (exact? 5+3i))
(assert (inexact? 8.5))
(assert (inexact? 8.5+4i))

(assert (rational? (/ 4 3)))
(assert (rational? (/ 4)))

(assert-equal 1 (make-polar 1 0))

(assert-equal 3 (rationalize 5.5 3))
(assert-equal 4 (rationalize 5.5 2))
(assert-equal 5 (rationalize 5.5 1))
(assert-equal 11/2 (rationalize 5.5 0.1))
(assert-equal 16/3 (rationalize 5.25 0.1))
(assert-equal 21/4 (rationalize 5.25 0.01))
