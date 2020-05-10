; --------------------------------
; Question 10
; --------------------------------
; fn main() {
;   let x = vec![1 2 3];
;   let y = x.len();
;   let z = x[2] + y;
; }

#lang racket

(module test racket 
  (require "assert.rkt")
  ; Add code below
  ; ------------------
  (define x (list 1 2 3))
  (define y (length x))
  (define z (+ (list-ref x 2) y))
  ; ------------------
  ; Add code above
  (assert z 6))