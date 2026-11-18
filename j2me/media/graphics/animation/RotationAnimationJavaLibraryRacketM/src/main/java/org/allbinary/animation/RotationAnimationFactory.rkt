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
  "./AnimationInterfaceFactoryInterface.rkt"
  "./ProceduralAnimationInterfaceFactoryInterface.rkt")
(lazy-require ["../../../org/allbinary/game/configuration/GameConfigurationCentral.rkt" (GameConfigurationCentral.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/math/AngleFactory.rkt" (AngleFactory.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/math/AngleInfo.rkt" (AngleInfo.jm_getInstance_1)])
(lazy-require ["./NullRotationAnimation.rkt" (NullRotationAnimation.jm_createTotalAngle_3)])
(lazy-require ["./AnimationBehavior.rkt" (AnimationBehavior.jm_getInstance_0)])
(provide (all-defined-out))

(define RotationAnimationFactory%
  (class JObject%
    (super-new)
    (field [f_totalAngle 0])
    (field [f_angleIncrement 0])
    (define/public (jm_getInstance_1 _instanceId)
    (let ()
      (let/ec jreturn
        (jreturn (NullRotationAnimation.jm_createTotalAngle_3 (AngleInfo.jm_getInstance_1 (get-field f_angleIncrement this)) (get-field f_totalAngle this) (AnimationBehavior.jm_getInstance_0))))))
    (define/public (jm_getInstanceAnimation_1 _animationInterface)
    (let ()
      (let/ec jreturn
        (jreturn (NullRotationAnimation.jm_createTotalAngle_3 (AngleInfo.jm_getInstance_1 (get-field f_angleIncrement this)) (get-field f_totalAngle this) (AnimationBehavior.jm_getInstance_0))))))
    (define/public (jm_setInitialScale_1 _scaleProperties)
    (let ()
      (let/ec jreturn (void))))))
(define (RotationAnimationFactory.jclassValue) RotationAnimationFactory%)

(define (RotationAnimationFactory.jnew_2 _totalAngle _angleIncrement)
  (define this (new RotationAnimationFactory% [jclass "RotationAnimationFactory"]))
    
    
    (let ()
      (let/ec jreturn
        (set-field! f_totalAngle this _totalAngle)
        (set-field! f_angleIncrement this _angleIncrement)))
  this)

(define (RotationAnimationFactory.jm_createFactory_0)
    (let ([_totalAngle JR.null])
      (let/ec jreturn
        (set! _totalAngle (get-field f_TOTAL_ANGLE (AngleFactory.jm_getInstance_0)))
        (jreturn (RotationAnimationFactory.jnew_2 _totalAngle (JR.i16 (JR.idiv _totalAngle (send (GameConfigurationCentral.jm_getInstance_0) jm_getGameControlFidelity_0))))))))



