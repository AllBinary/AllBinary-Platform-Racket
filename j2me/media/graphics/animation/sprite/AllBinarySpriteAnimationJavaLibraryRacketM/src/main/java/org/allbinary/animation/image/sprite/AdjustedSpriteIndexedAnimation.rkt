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
;; package org.allbinary.animation.image.sprite

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "./SpriteIndexedAnimation.rkt")
(provide (all-defined-out))

(define AdjustedSpriteIndexedAnimation%
  (class SpriteIndexedAnimation%
    (super-new)
    (field [f_dx 0])
    (field [f_dy 0])
    (define/override (jm_paintFrame_4 _graphics _frame _x _y)
    (let ()
      (let/ec jreturn
        (send this jm_setFrame_1 _frame)
        (send (get-field f_sprite this) jm_setPosition_2 (JR.i32 (+ _x (get-field f_dx this))) (JR.i32 (+ _y (get-field f_dy this))))
        (super jm_paint_1 _graphics))))
    (define/override (jm_paintXY_3 _g _x _y)
    (let ()
      (let/ec jreturn
        (send (get-field f_sprite this) jm_setPosition_2 (JR.i32 (+ _x (get-field f_dx this))) (JR.i32 (+ _y (get-field f_dy this))))
        (super jm_paint_1 _g))))
    (define/override (jm_paint_1 _g)
    (let ()
      (let/ec jreturn
        (send (get-field f_sprite this) jm_setPosition_2 (get-field f_dx this) (get-field f_dy this))
        (super jm_paint_1 _g))))))
(define (AdjustedSpriteIndexedAnimation.jclassValue) AdjustedSpriteIndexedAnimation%)

(define (AdjustedSpriteIndexedAnimation.jnew_6 _sprite _image _basicColorArray _dx _dy _animationBehavior)
  (define this (new AdjustedSpriteIndexedAnimation% [jclass "AdjustedSpriteIndexedAnimation"]))
    
    
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_dx this _dx)
        (set-field! f_dy this _dy)))
  this)



