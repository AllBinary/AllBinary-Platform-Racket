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
  "./ImageArrayAnimation.rkt")
(provide (all-defined-out))

(define AdjustedImageArrayAnimation%
  (class ImageArrayAnimation%
    (super-new)
    (field [f_dx 0])
    (field [f_dy 0])
    (define/public (jm_init_2 _dx _dy)
    (let ()
      (let/ec jreturn
        (send this jm_setDx_1 _dx)
        (send this jm_setDy_1 _dy))))
    (define/override (jm_paintXY_3 _graphics _x _y)
    (let ()
      (let/ec jreturn
        (super jm_paintXY_3 _graphics (JR.i32 (+ _x (get-field f_dx this))) (JR.i32 (+ _y (get-field f_dy this)))))))
    (define/override (jm_setDx_1 _dx)
    (let ()
      (let/ec jreturn
        (set-field! f_dx this _dx))))
    (define/override (jm_getDx_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_dx this)))))
    (define/override (jm_setDy_1 _dy)
    (let ()
      (let/ec jreturn
        (set-field! f_dy this _dy))))
    (define/override (jm_getDy_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_dy this)))))))
(define (AdjustedImageArrayAnimation.jclassValue) AdjustedImageArrayAnimation%)

(define (AdjustedImageArrayAnimation.jnew_4 _imageArray _dx _dy _animationBehavior)
  (define this (new AdjustedImageArrayAnimation% [jclass "AdjustedImageArrayAnimation"]))
    
    
    (let ()
      (let/ec jreturn
        (void)
        (send this jm_init_2 _dx _dy)))
  this)



