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
;; package org.allbinary.animation.image

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "./LeftToRightImageAnimation.rkt")
(provide (all-defined-out))

(define AdjustedLeftToRightImageAnimation%
  (class LeftToRightImageAnimation%
    (super-new)
    (field [f_dx 0])
    (field [f_dy 0])
    (define/public (jm_init_2 _dx _dy)
    (let ()
      (let/ec jreturn
        (set-field! f_dx this _dx)
        (set-field! f_dy this _dy))))
    (define/override (jm_paintXY_3 _graphics _x _y)
    (let ()
      (let/ec jreturn
        (super jm_paintXY_3 _graphics (JR.i32 (+ _x (get-field f_dx this))) (JR.i32 (+ _y (get-field f_dy this)))))))))
(define (AdjustedLeftToRightImageAnimation.jclassValue) AdjustedLeftToRightImageAnimation%)

(define (AdjustedLeftToRightImageAnimation.jnew_5 _image _sequenceArray _dx _dy _animationBehavior)
  (define this (new AdjustedLeftToRightImageAnimation% [jclass "AdjustedLeftToRightImageAnimation"]))
    
    
    (let ()
      (let/ec jreturn
        (void)
        (send this jm_init_2 _dx _dy)))
  this)



