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
(lazy-require ["../../../../org/allbinary/math/AngleFactory.rkt" (AngleFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/math/AngleInfo.rkt" (AngleInfo.jm_getInstance_1)])
(lazy-require ["./ImageBaseRotationAnimation.rkt" (ImageBaseRotationAnimation.jnew_4)])
(lazy-require ["./AdjustedImageBaseRotationAnimation.rkt" (AdjustedImageBaseRotationAnimation.jnew_6)])
(provide (all-defined-out))

(define ImageRotationAnimationFactory%
  (class BaseImageAnimationFactory%
    (super-new)
    (field [f_angleIncrement 0])
    (define/override (jm_getInstance_1 _instanceId)
    (let ()
      (let/ec jreturn
        (if (or (not (= (get-field f_dx (get-field f_animationFactoryInitializationVisitor this)) 0)) (not (= (get-field f_dy (get-field f_animationFactoryInitializationVisitor this)) 0)))
            (begin
            (JR.className (get-field f_animationFactoryImageScaleUtil this))
            (jreturn (AdjustedImageBaseRotationAnimation.jnew_6 (send this jm_getImage_0) (AngleInfo.jm_getInstance_1 (get-field f_angleIncrement this)) (get-field f_TOTAL_ANGLE (AngleFactory.jm_getInstance_0)) (get-field f_dx (get-field f_animationFactoryInitializationVisitor this)) (get-field f_dy (get-field f_animationFactoryInitializationVisitor this)) (send (get-field f_animationBehaviorFactory this) jm_getOrCreateInstance_0))))
            (begin
            (jreturn (ImageBaseRotationAnimation.jnew_4 (send this jm_getImage_0) (AngleInfo.jm_getInstance_1 (get-field f_angleIncrement this)) (get-field f_TOTAL_ANGLE (AngleFactory.jm_getInstance_0)) (send (get-field f_animationBehaviorFactory this) jm_getOrCreateInstance_0))))))))
    (define/public (jm_getAngleIncrementP_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_angleIncrement this)))))))
(define (ImageRotationAnimationFactory.jclassValue) ImageRotationAnimationFactory%)

(define (ImageRotationAnimationFactory.jnew_7 _image _width _height _dx _dy _angleIncrement _animationBehaviorFactory)
  (define this (new ImageRotationAnimationFactory% [jclass "ImageRotationAnimationFactory"]))
    
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_angleIncrement this _angleIncrement)
        (set-field! f_dx (get-field f_animationFactoryInitializationVisitor this) _dx)
        (set-field! f_dy (get-field f_animationFactoryInitializationVisitor this) _dy)))
  this)



