#lang racket/base
;;
;; AllBinary Open License Version 1
;; Copyright (c) 2011 AllBinary
;; 
;; By agreeing to this license you and any business entity you represent are
;; legally bound to the AllBinary Open License Version 1 legal agreement.
;; 
;; You may obtain the AllBinary Open License Version 1 legal agreement from
;; AllBinary or the root directory of AllBinary's AllBinary Platform repository.
;; 
;; Created By: Travis Berthelot
;;  
;; Generated Code Do Not Modify
;; package org.allbinary.animation

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "./VectorAnimation.rkt")
(provide (all-defined-out))

(define AdjustedVectorAnimation%
  (class VectorAnimation%
    (super-new)
    (field [f_dx 0])
    (field [f_dy 0])
    (define/override (jm_paintXY_3 _graphics _x _y)
    (let ()
      (let/ec jreturn
        (super jm_paintXY_3 _graphics (JR.i32 (+ _x (get-field f_dx this))) (JR.i32 (+ _y (get-field f_dy this)))))))))
(define (AdjustedVectorAnimation.jclassValue) AdjustedVectorAnimation%)

(define (AdjustedVectorAnimation.jnew_5 _currentPoints _basicColor _dx _dy _animationBehavior)
  (define this (new AdjustedVectorAnimation% [jclass "AdjustedVectorAnimation"]))
    
    
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_dx this _dx)
        (set-field! f_dy this _dy)))
  this)



