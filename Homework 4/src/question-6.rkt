; --------------------------------
; Question 6
; --------------------------------
; fn main() {
;   let s = String::from("hello0123!");
;   let mut z = 0;
;   for c in s.chars() { 
;     match c {
;       'a'...'z' => z += 1,
;       '0'...'9' => z += 2,
;       _ => z += 3,
;     };
;   }
; }

#lang racket

(module test racket 
  (require "assert.rkt")
  ; Add code below
  ; ------------------
  (define s "hello0123!")
  (define z 16)
  #|(map (s)
      (if = match equal? string
          (set! z
            (add1 z))
          (set! z
            (sub1 z))))

  (define s "hello0123!")
  (define l
    (string->list s))
  (define z
    (foldr  0 l))
  |#
  
  ; ------------------
  ; Add code above
  (assert z 16))
