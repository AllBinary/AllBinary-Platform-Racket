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
(lazy-require ["../../../../org/allbinary/animation/NullAnimationFactory.rkt" (NullAnimationFactory.jm_getFactoryInstance_0)])
(provide (all-defined-out))

(define CompoundAnimationInterfaceFactory%
  (class JObject%
    (super-new)
    (field [f_basicAnimationInterfaceFactoryInterfaceArrayP JR.null])
    (field [f_animationBehaviorFactory JR.null])
    (define/public (jm_getInstance_1 _instanceId)
    (let ([_size JR.null][_animationInterfaceArray JR.null][_index JR.null])
      (let/ec jreturn
        (set! _size (vector-length (get-field f_basicAnimationInterfaceFactoryInterfaceArrayP this)))
        (set! _animationInterfaceArray (send this jm_createArray_1 _size))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (vector-set! _animationInterfaceArray _index (JR.className (vector-ref (get-field f_basicAnimationInterfaceFactoryInterfaceArrayP this) _index))))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (jreturn (send this jm_createAnimation_1 _animationInterfaceArray)))))
    (define/public (jm_createArray_1 _size)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_EMPTY_ARRAY (NullAnimationFactory.jm_getFactoryInstance_0))))))
    (define/public (jm_createAnimation_1 _animationInterfaceArray)
    (let ()
      (let/ec jreturn
        (jreturn (JR.className (NullAnimationFactory.jm_getFactoryInstance_0))))))
    (define/public (jm_getBasicAnimationInterfaceFactoryInterfaceArray_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_basicAnimationInterfaceFactoryInterfaceArrayP this)))))
    (define/public (jm_setInitialScale_1 _scaleProperties)
    (let ([_size JR.null][_index JR.null])
      (let/ec jreturn
        (set! _size (vector-length (get-field f_basicAnimationInterfaceFactoryInterfaceArrayP this)))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (JR.className (vector-ref (get-field f_basicAnimationInterfaceFactoryInterfaceArrayP this) _index)))
                (set! _index (JR.i32 (+ _index 1))) (jloop))))))))))
(define (CompoundAnimationInterfaceFactory.jclassValue) CompoundAnimationInterfaceFactory%)

(define (CompoundAnimationInterfaceFactory.jnew_2 _basicAnimationInterfaceFactoryInterfaceArray _animationBehaviorFactory)
  (define this (new CompoundAnimationInterfaceFactory% [jclass "CompoundAnimationInterfaceFactory"]))
    
    
    (let ()
      (let/ec jreturn
        (set-field! f_basicAnimationInterfaceFactoryInterfaceArrayP this _basicAnimationInterfaceFactoryInterfaceArray)
        (set-field! f_animationBehaviorFactory this _animationBehaviorFactory)))
  this)



