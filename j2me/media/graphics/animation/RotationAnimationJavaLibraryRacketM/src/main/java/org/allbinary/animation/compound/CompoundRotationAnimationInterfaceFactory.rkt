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
;; package org.allbinary.animation.compound

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "./CompoundAnimationInterfaceFactory.rkt")
(lazy-require ["../../../../org/allbinary/animation/AnimationBehaviorFactory.rkt" (AnimationBehaviorFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/communication/log/ForcedLogUtil.rkt" (ForcedLogUtil.jm_log_2)])
(lazy-require ["./CompoundRotationAnimation.rkt" (CompoundRotationAnimation.jnew_2)])
(provide (all-defined-out))

(define CompoundRotationAnimationInterfaceFactory%
  (class CompoundAnimationInterfaceFactory%
    (super-new)
    (define/override (jm_createArray_1 _size)
    (let ()
      (let/ec jreturn
        (jreturn (JR.newArray JR.null _size)))))
    (define/override (jm_createAnimation_1 _animationInterfaceArray)
    (let ()
      (let/ec jreturn
        (jreturn (CompoundRotationAnimation.jnew_2 _animationInterfaceArray (send (get-field f_animationBehaviorFactory this) jm_getOrCreateInstance_0))))))))
(define (CompoundRotationAnimationInterfaceFactory.jclassValue) CompoundRotationAnimationInterfaceFactory%)

(define (CompoundRotationAnimationInterfaceFactory.jnew_2 _basicAnimationInterfaceFactoryInterfaceArray _animationBehaviorFactory)
  (define this (new CompoundRotationAnimationInterfaceFactory% [jclass "CompoundRotationAnimationInterfaceFactory"]))
    (let ()
      (let/ec jreturn
        (void)
        (when (eq? _animationBehaviorFactory (AnimationBehaviorFactory.jm_getInstance_0))
            (begin
            (ForcedLogUtil.jm_log_2 "Using default AnimationBehaviorFactory with IndexedAnimationFactory" this)))))
  this)



