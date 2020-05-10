; --------------------------------
; Question 5
; --------------------------------
; fn main() {
;   let s = "hello";
;   let x = if s.len() >= 5 && s.get(0..5).unwrap() == "hello" {
;     1 
;   } else {
;     2
;   };
;   println!("{:?}", x);
; }

#lang racket

(module test racket 
  (require "assert.rkt")
  ; Add code below
  ; ------------------
  (define s "hello")
  (define x
    (if (and (>= (string-length s) 5) (string=? (substring s 0 5) "hello"))
        1
        2))
  
  ; ------------------
  ; Add code above
  (assert x 1))