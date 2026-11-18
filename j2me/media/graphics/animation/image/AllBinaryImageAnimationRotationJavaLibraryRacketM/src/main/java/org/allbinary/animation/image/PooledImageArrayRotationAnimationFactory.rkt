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
  "../../../../org/allbinary/animation/AnimationInterfaceFactoryInterface.rkt")
(lazy-require ["../../../../org/allbinary/game/configuration/GameConfigurationCentral.rkt" (GameConfigurationCentral.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/math/AngleFactory.rkt" (AngleFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/media/image/ImageToRotationImageArrayUtil.rkt" (ImageToRotationImageArrayUtil.jm_getInstance_0)])
(lazy-require ["./ImageArrayRotationAnimationInfo.rkt" (ImageArrayRotationAnimationInfo.jnew_5)])
(lazy-require ["./AdjustedImageArrayRotationAnimation.rkt" (AdjustedImageArrayRotationAnimation.jm_createAdjustedImageArrayRotationAnimationInfo_2)])
(provide (all-defined-out))

;TWB - Adjustments should be done in the resource creation and not at the animation level
(define PooledImageArrayRotationAnimationFactory%
  (class JObject%
    (super-new)
    (field [f_allBinaryImageRotationAnimationInfo JR.null])
    (field [f_animationBehaviorFactory JR.null])
    (define/public (jm_getInstance_1 _instanceId)
    (let ()
      (let/ec jreturn
        (jreturn (AdjustedImageArrayRotationAnimation.jm_createAdjustedImageArrayRotationAnimationInfo_2 (get-field f_allBinaryImageRotationAnimationInfo this) (send (get-field f_animationBehaviorFactory this) jm_getOrCreateInstance_0))))))
    (define/public (jm_setInitialScale_1 _scaleProperties)
    (let ()
      (let/ec jreturn (void))))))
(define (PooledImageArrayRotationAnimationFactory.jclassValue) PooledImageArrayRotationAnimationFactory%)

(define (PooledImageArrayRotationAnimationFactory.jnew_7 _image _width _height _dx _dy _angleIncrement _animationBehaviorFactory)
  (define this (new PooledImageArrayRotationAnimationFactory% [jclass "PooledImageArrayRotationAnimationFactory"]))
    (set-field! f_allBinaryImageRotationAnimationInfo this (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0)))
    
    (let ([_totalAngle JR.null][_imageArray JR.null])
      (let/ec jreturn
        (set-field! f_animationBehaviorFactory this _animationBehaviorFactory)
        (set! _totalAngle (get-field f_TOTAL_ANGLE (AngleFactory.jm_getInstance_0)))
        (set! _imageArray (send (ImageToRotationImageArrayUtil.jm_getInstance_0) jm_generate_3 _image _angleIncrement _totalAngle))
        (set-field! f_allBinaryImageRotationAnimationInfo this (ImageArrayRotationAnimationInfo.jnew_5 _imageArray _angleIncrement _totalAngle _dx _dy))))
  this)

(define (PooledImageArrayRotationAnimationFactory.jm_createFactory_2 _image _animationBehaviorFactory)
    (let ([_totalAngle JR.null][_angleIncrement JR.null])
      (let/ec jreturn
        (set! _totalAngle (get-field f_TOTAL_ANGLE (AngleFactory.jm_getInstance_0)))
        (set! _angleIncrement (JR.idiv _totalAngle (send (GameConfigurationCentral.jm_getInstance_0) jm_getGameControlFidelity_0)))
        (jreturn (PooledImageArrayRotationAnimationFactory.jnew_7 _image (send _image jm_getWidth_0) (send _image jm_getHeight_0) (JR.i32 (- (arithmetic-shift (send _image jm_getWidth_0) (- (bitwise-and 2 31))))) (JR.i32 (- (arithmetic-shift (send _image jm_getHeight_0) (- (bitwise-and 2 31))))) _angleIncrement _animationBehaviorFactory)))))

(define (PooledImageArrayRotationAnimationFactory.jm_createDXY_4 _image _dx _dy _animationBehaviorFactory)
    (let ([_totalAngle JR.null][_angleIncrement JR.null])
      (let/ec jreturn
        (set! _totalAngle (get-field f_TOTAL_ANGLE (AngleFactory.jm_getInstance_0)))
        (set! _angleIncrement (JR.idiv _totalAngle (send (GameConfigurationCentral.jm_getInstance_0) jm_getGameControlFidelity_0)))
        (jreturn (PooledImageArrayRotationAnimationFactory.jnew_7 _image (send _image jm_getWidth_0) (send _image jm_getHeight_0) _dx _dy _angleIncrement _animationBehaviorFactory)))))



