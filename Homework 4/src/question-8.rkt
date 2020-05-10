; --------------------------------
; Question 8
; --------------------------------
; fn main() {
;   let h = |i: i32| -> i32 { i + 1 };
;   let y = double_result(h);
; }
;
; fn double_result<F>(y: F) -> i32
;    where F: Fn(i32) -> i32 {
;    2 * y(1)
; }

#lang racket

(module test racket 
  (require "assert.rkt")
  ; Add code below
  ; ------------------
  (define h 2)
  (define (double_result y)
    (* 2 y))
  (define y
    (double_result h))
  ; ------------------
  ; Add code above
  (assert y 4))