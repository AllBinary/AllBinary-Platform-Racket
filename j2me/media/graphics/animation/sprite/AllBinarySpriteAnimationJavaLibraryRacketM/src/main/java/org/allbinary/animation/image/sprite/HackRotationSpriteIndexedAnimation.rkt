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
  "../../../../../org/allbinary/animation/RotationAnimation.rkt")
(lazy-require ["../../../../../org/allbinary/logic/math/PrimitiveIntUtil.rkt" (PrimitiveIntUtil.jm_getArrayInstance_0)])
(lazy-require ["../../../../../org/allbinary/util/CircularIndexUtil.rkt" (CircularIndexUtil.jm_createInstance_1)])
(provide (all-defined-out))

(define HackRotationSpriteIndexedAnimation%
  (class RotationAnimation%
    (super-new)
    (field [f_sprite JR.null])
    (field [f_image JR.null])
    (define/override (jm_getAnimationSize_0)
    (let ()
      (let/ec jreturn
        (jreturn (send this jm_getSize_0)))))
    (define/public (jm_paintFrame_4 _g _frame _x _y)
    (let ()
      (let/ec jreturn
        (send this jm_setFrame_1 _frame)
        (send this jm_paintXY_3 _g _x _y))))
    (define/override (jm_paintXY_3 _g _x _y)
    (let ()
      (let/ec jreturn
        (send (get-field f_sprite this) jm_setPosition_2 _x _y)
        (send this jm_paint_1 _g))))
    (define/public (jm_paint_1 _g)
    (let ()
      (let/ec jreturn
        (send (get-field f_sprite this) jm_paint_1 _g))))
    (define/override (jm_nextRotation_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_sprite this) jm_nextFrame_0))))
    (define/override (jm_previousRotation_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_sprite this) jm_prevFrame_0))))
    (define/override (jm_getSize_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_sprite this) jm_getRawFrameCount_0)))))
    (define/override (jm_setFrame_1 _frame)
    (let ()
      (let/ec jreturn
        (send (get-field f_sprite this) jm_setFrame_1 _frame))))
    (define/override (jm_getFrame_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_sprite this) jm_getFrame_0)))))
    (define/override (jm_setSequence_1 _sequence)
    (let ()
      (let/ec jreturn (void))))
    (define/override (jm_getSequence_0)
    (let ()
      (let/ec jreturn
        (jreturn (PrimitiveIntUtil.jm_getArrayInstance_0)))))))
(define (HackRotationSpriteIndexedAnimation.jclassValue) HackRotationSpriteIndexedAnimation%)

(define (HackRotationSpriteIndexedAnimation.jnew_4 _sprite _image _angleInfo _animationBehavior)
  (define this (new HackRotationSpriteIndexedAnimation% [jclass "HackRotationSpriteIndexedAnimation"]))
    
    
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_sprite this _sprite)
        (set-field! f_image this _image)))
  this)



