; Any built-in functions that we can implement directly
; in Scheme should go here. If at all possible, write
; builtins in Scheme rather than Ruby.

; less than or equal to
; Returns true iff x <= y
(define (<= x y)
  (not (> x y)))

; greater than or equal to
; Returns true iff x >= y
(define (>= x y)
  (not (< x y)))

; newline
; prints a new-line character
(define (newline)
  (display "\n"))
