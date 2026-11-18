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
(lazy-require ["./LeftToRightImageAnimation.rkt" (LeftToRightImageAnimation.jnew_3)])
(lazy-require ["./AdjustedLeftToRightImageAnimation.rkt" (AdjustedLeftToRightImageAnimation.jnew_5)])
(provide (all-defined-out))

(define LeftToRightImageAnimationFactory%
  (class BaseImageAnimationFactory%
    (super-new)
    (define/override (jm_getInstance_1 _instanceId)
    (let ([_scaledImage JR.null])
      (let/ec jreturn
        (set! _scaledImage (JR.className (get-field f_animationFactoryImageScaleUtil this)))
        (if (or (not (= (get-field f_dx (get-field f_animationFactoryInitializationVisitor this)) 0)) (not (= (get-field f_dy (get-field f_animationFactoryInitializationVisitor this)) 0)))
            (begin
            (JR.className (get-field f_animationFactoryImageScaleUtil this))
            (jreturn (AdjustedLeftToRightImageAnimation.jnew_5 _scaledImage (send this jm_getSequenceArray_0) (get-field f_dx (get-field f_animationFactoryInitializationVisitor this)) (get-field f_dy (get-field f_animationFactoryInitializationVisitor this)) (send (get-field f_animationBehaviorFactory this) jm_getOrCreateInstance_0))))
            (begin
            (jreturn (LeftToRightImageAnimation.jnew_3 _scaledImage (send this jm_getSequenceArray_0) (send (get-field f_animationBehaviorFactory this) jm_getOrCreateInstance_0))))))))))
(define (LeftToRightImageAnimationFactory.jclassValue) LeftToRightImageAnimationFactory%)

(define (LeftToRightImageAnimationFactory.jnew_5 _image _sequenceArray _dx _dy _animationBehaviorFactory)
  (define this (new LeftToRightImageAnimationFactory% [jclass "LeftToRightImageAnimationFactory"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)



