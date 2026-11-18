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
  "./BaseImageAnimationFactory.rkt")
(lazy-require ["../../../../org/allbinary/logic/math/PrimitiveIntUtil.rkt" (PrimitiveIntUtil.jm_getArrayInstance_0)])
(lazy-require ["./RightToLeftImageAnimation.rkt" (RightToLeftImageAnimation.jnew_2)])
(lazy-require ["./AdjustedRightToLeftImageAnimation.rkt" (AdjustedRightToLeftImageAnimation.jnew_4)])
(provide (all-defined-out))

(define RightToLeftImageAnimationFactory%
  (class BaseImageAnimationFactory%
    (super-new)
    (define/override (jm_getInstance_1 _instanceId)
    (let ([_scaledImage JR.null])
      (let/ec jreturn
        (set! _scaledImage (JR.className (get-field f_animationFactoryImageScaleUtil this)))
        (if (or (not (= (get-field f_dx (get-field f_animationFactoryInitializationVisitor this)) 0)) (not (= (get-field f_dy (get-field f_animationFactoryInitializationVisitor this)) 0)))
            (begin
            (JR.className (get-field f_animationFactoryImageScaleUtil this))
            (jreturn (AdjustedRightToLeftImageAnimation.jnew_4 _scaledImage (get-field f_dx (get-field f_animationFactoryInitializationVisitor this)) (get-field f_dy (get-field f_animationFactoryInitializationVisitor this)) (send (get-field f_animationBehaviorFactory this) jm_getOrCreateInstance_0))))
            (begin
            (jreturn (RightToLeftImageAnimation.jnew_2 _scaledImage (send (get-field f_animationBehaviorFactory this) jm_getOrCreateInstance_0))))))))))
(define (RightToLeftImageAnimationFactory.jclassValue) RightToLeftImageAnimationFactory%)

(define (RightToLeftImageAnimationFactory.jnew_4 _image _dx _dy _animationBehaviorFactory)
  (define this (new RightToLeftImageAnimationFactory% [jclass "RightToLeftImageAnimationFactory"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)



