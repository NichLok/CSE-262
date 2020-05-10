; --------------------------------
; Question 4
; --------------------------------
; fn main() {
;    let x = 10 * (3 + 9) / 6 - 3;
; }

#lang racket

(module test racket 
  (require "assert.rkt")
  ; Add code below
  ; ------------------
(define x
  (-(/(* 10 ( + 3 9)) 6) 3))
  ; ------------------
  ; Add code above
  (assert x 17))