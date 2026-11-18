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
(lazy-require ["../../../org/allbinary/graphics/color/BasicColorFactory.rkt" (BasicColorFactory.jm_getInstance_0)])
(lazy-require ["./VectorExplosionGenerator.rkt" (VectorExplosionGenerator.jm_getInstance_0)])
(lazy-require ["./VectorRotationAnimation.rkt" (VectorRotationAnimation.jnew_3)])
(provide (all-defined-out))

(define VectorExplosionAnimationFactory%
  (class JObject%
    (super-new)
    (field [f_vectorExplosionGenerator JR.null])
    (field [f_basicColor JR.null])
    (field [f_animationBehaviorFactory JR.null])
    (define/public (jm_getInstanceAnimation_1 _animationInterface)
    (let ([_vectorRotationAnimationInterface JR.null][_frame JR.null][_framePoints JR.null][_points JR.null])
      (let/ec jreturn
        (set! _vectorRotationAnimationInterface _animationInterface)
        (set! _frame (send _vectorRotationAnimationInterface jm_getFrame_0))
        (set! _framePoints (send _vectorRotationAnimationInterface jm_getPoints_1 _frame))
        (set! _points (send (get-field f_vectorExplosionGenerator this) jm_getInstance_3 _framePoints 6 (get-field f_ROTATION (get-field f_vectorExplosionGenerator this))))
        (jreturn (VectorRotationAnimation.jnew_3 _points (send this jm_getBasicColorP_0) (send (get-field f_animationBehaviorFactory this) jm_getOrCreateInstance_0))))))
    (define/public (jm_setBasicColorP_1 _basicColor)
    (let ()
      (let/ec jreturn
        (set-field! f_basicColor this _basicColor))))
    (define/public (jm_getBasicColorP_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_basicColor this)))))))
(define (VectorExplosionAnimationFactory.jclassValue) VectorExplosionAnimationFactory%)

(define (VectorExplosionAnimationFactory.jnew_2 _basicColor _animationBehaviorFactory)
  (define this (new VectorExplosionAnimationFactory% [jclass "VectorExplosionAnimationFactory"]))
    (set-field! f_vectorExplosionGenerator this (VectorExplosionGenerator.jm_getInstance_0))
    (set-field! f_basicColor this (get-field f_WHITE (BasicColorFactory.jm_getInstance_0)))
    
    (let ()
      (let/ec jreturn
        (set-field! f_animationBehaviorFactory this _animationBehaviorFactory)
        (send this jm_setBasicColorP_1 _basicColor)))
  this)



