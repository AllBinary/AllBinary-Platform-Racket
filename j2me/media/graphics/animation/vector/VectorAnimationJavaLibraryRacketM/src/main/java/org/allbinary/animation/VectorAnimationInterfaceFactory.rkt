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
  "./AnimationInterfaceFactoryInterface.rkt")
(lazy-require ["../../../org/allbinary/graphics/color/BasicColorFactory.rkt" (BasicColorFactory.jm_getInstance_0)])
(lazy-require ["./VectorAnimation.rkt" (VectorAnimation.jnew_3)])
(provide (all-defined-out))

(define VectorAnimationInterfaceFactory%
  (class JObject%
    (super-new)
    (field [f_currentPoints JR.null])
    (field [f_basicColor JR.null])
    (field [f_animationBehaviorFactory JR.null])
    (define/public (jm_getInstance_1 _instanceId)
    (let ()
      (let/ec jreturn
        (jreturn (VectorAnimation.jnew_3 (get-field f_currentPoints this) (send this jm_getBasicColorP_0) (send (get-field f_animationBehaviorFactory this) jm_getOrCreateInstance_0))))))
    (define/public (jm_setBasicColorP_1 _basicColor)
    (let ()
      (let/ec jreturn
        (set-field! f_basicColor this _basicColor))))
    (define/public (jm_getBasicColorP_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_basicColor this)))))
    (define/public (jm_setInitialScale_1 _scaleProperties)
    (let ()
      (let/ec jreturn (void))))))
(define (VectorAnimationInterfaceFactory.jclassValue) VectorAnimationInterfaceFactory%)

(define (VectorAnimationInterfaceFactory.jnew_3 _currentPoints _basicColor _animationBehaviorFactory)
  (define this (new VectorAnimationInterfaceFactory% [jclass "VectorAnimationInterfaceFactory"]))
    
    (set-field! f_basicColor this (get-field f_WHITE (BasicColorFactory.jm_getInstance_0)))
    
    (let ()
      (let/ec jreturn
        (set-field! f_currentPoints this _currentPoints)
        (send this jm_setBasicColorP_1 _basicColor)
        (set-field! f_animationBehaviorFactory this _animationBehaviorFactory)))
  this)



