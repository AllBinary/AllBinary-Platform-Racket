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
  "../../../../org/allbinary/animation/AnimationInterfaceFactoryInterface.rkt")
(lazy-require ["./SimultaneousCompoundIndexAnimation.rkt" (SimultaneousCompoundIndexAnimation.jnew_2)])
(provide (all-defined-out))

(define SimultaneousCompoundIndexAnimationInterfaceFactory%
  (class JObject%
    (super-new)
    (field [f_basicAnimationInterfaceFactoryInterfaceArray JR.null])
    (field [f_animationBehaviorFactory JR.null])
    (define/public (jm_getInstance_1 _instanceId)
    (let ([_size JR.null][_animationInterfaceArray JR.null][_index JR.null])
      (let/ec jreturn
        (set! _size (vector-length (get-field f_basicAnimationInterfaceFactoryInterfaceArray this)))
        (set! _animationInterfaceArray (JR.newArray JR.null _size))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (vector-set! _animationInterfaceArray _index (JR.className (vector-ref (get-field f_basicAnimationInterfaceFactoryInterfaceArray this) _index))))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (jreturn (send this jm_getOrCreate_1 _animationInterfaceArray)))))
    (define/public (jm_getOrCreate_1 _animationInterfaceArray)
    (let ()
      (let/ec jreturn
        (jreturn (SimultaneousCompoundIndexAnimation.jnew_2 _animationInterfaceArray (send (get-field f_animationBehaviorFactory this) jm_getOrCreateInstance_0))))))
    (define/public (jm_getBasicAnimationInterfaceFactoryInterfaceArray_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_basicAnimationInterfaceFactoryInterfaceArray this)))))
    (define/public (jm_setInitialScale_1 _scaleProperties)
    (let ()
      (let/ec jreturn (void))))))
(define (SimultaneousCompoundIndexAnimationInterfaceFactory.jclassValue) SimultaneousCompoundIndexAnimationInterfaceFactory%)

(define (SimultaneousCompoundIndexAnimationInterfaceFactory.jnew_2 _basicAnimationInterfaceFactoryInterfaceArray _animationBehaviorFactory)
  (define this (new SimultaneousCompoundIndexAnimationInterfaceFactory% [jclass "SimultaneousCompoundIndexAnimationInterfaceFactory"]))
    
    
    (let ()
      (let/ec jreturn
        (set-field! f_basicAnimationInterfaceFactoryInterfaceArray this _basicAnimationInterfaceFactoryInterfaceArray)
        (set-field! f_animationBehaviorFactory this _animationBehaviorFactory)))
  this)



