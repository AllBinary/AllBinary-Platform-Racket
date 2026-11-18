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
  "./ProceduralAnimationInterfaceFactoryInterface.rkt")
(lazy-require ["../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(lazy-require ["./VectorRotationGenerator.rkt" (VectorRotationGenerator.jm_getInstance_0)])
(lazy-require ["./VectorExplosionGenerator.rkt" (VectorExplosionGenerator.jm_getInstance_0)])
(provide (all-defined-out))

(define IndependentVectorExplosionRotationAnimationFactory%
  (class JObject%
    (super-new)
    (field [f_framePoints JR.null])
    (field [f_vectorInfo JR.null])
    (field [f_basicColor JR.null])
    (field [f_vectorAnimationFactoryInterface JR.null])
    (field [f_vectorExplosionGenerator JR.null])
    (define/public (jm_init_0)
    (let ()
      (let/ec jreturn
        (set-field! f_framePoints this (send (VectorRotationGenerator.jm_getInstance_0) jm_getInstance_1 (get-field f_vectorInfo this))))))
    (define/public (jm_getInstanceAnimation_1 _animationInterface)
    (let ([_frame JR.null][_rotationAnimationInterface JR.null][_points JR.null])
      (let/ec jreturn
        (set! _frame 0)
        (when (not (JR.null? _animationInterface))
            (begin
            (set! _rotationAnimationInterface _animationInterface)
            (set! _frame (send _rotationAnimationInterface jm_getFrame_0))))
        (set! _points (send (get-field f_vectorExplosionGenerator this) jm_getInstance_3 (vector-ref (get-field f_framePoints this) _frame) 6 (get-field f_ROTATION (get-field f_vectorExplosionGenerator this))))
        (jreturn (send (get-field f_vectorAnimationFactoryInterface this) jm_getInstance_2 _points (get-field f_basicColor this))))))))
(define (IndependentVectorExplosionRotationAnimationFactory.jclassValue) IndependentVectorExplosionRotationAnimationFactory%)

(define (IndependentVectorExplosionRotationAnimationFactory.jnew_3 _vectorInfo _basicColor _vectorAnimationFactoryInterface)
  (define this (new IndependentVectorExplosionRotationAnimationFactory% [jclass "IndependentVectorExplosionRotationAnimationFactory"]))
    (set-field! f_framePoints this (get-field f_NULL_INT_ARRAY_ARRAY_ARRAY (NullUtil.jm_getInstance_0)))
    
    
    
    (set-field! f_vectorExplosionGenerator this (VectorExplosionGenerator.jm_getInstance_0))
    (let ()
      (let/ec jreturn
        (set-field! f_vectorInfo this _vectorInfo)
        (set-field! f_basicColor this _basicColor)
        (set-field! f_vectorAnimationFactoryInterface this _vectorAnimationFactoryInterface)
        (send this jm_init_0)))
  this)



