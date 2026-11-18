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
(lazy-require ["../../../../javax/microedition/lcdui/NullImage.rkt" (NullImage.jstatic_NULL_IMAGE_ARRAY)])
(lazy-require ["../../../../org/allbinary/animation/VectorAnimation.rkt" (VectorAnimation.jm_createVectorAnimation_3)])
(lazy-require ["../../../../org/allbinary/game/configuration/GameConfigurationCentral.rkt" (GameConfigurationCentral.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/image/AnimationFrameToImageUtil.rkt" (AnimationFrameToImageUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/math/PrimitiveIntUtil.rkt" (PrimitiveIntUtil.jm_getArrayInstance_0)])
(lazy-require ["../../../../org/allbinary/math/AngleFactory.rkt" (AngleFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/math/AngleInfo.rkt" (AngleInfo.jm_getInstance_1)])
(lazy-require ["../../../../org/allbinary/media/image/ImageToRotationImageArrayUtil.rkt" (ImageToRotationImageArrayUtil.jm_getInstance_0)])
(lazy-require ["./AdjustedImageArrayRotationAnimation.rkt" (AdjustedImageArrayRotationAnimation.jnew_6 AdjustedImageArrayRotationAnimation.jm_createAnimation_4)])
(provide (all-defined-out))

(define VectorToImageArrayRotationAnimationFactory%
  (class BaseImageAnimationFactory%
    (super-new)
    (field [f_imageArray JR.null])
    (field [f_angleIncrement 0])
    (define/public (jm_init_0)
    (let ([_angleFactory JR.null])
      (let/ec jreturn
        (set! _angleFactory (AngleFactory.jm_getInstance_0))
        (set-field! f_angleIncrement this (JR.idiv (get-field f_TOTAL_ANGLE _angleFactory) (send (GameConfigurationCentral.jm_getInstance_0) jm_getGameControlFidelity_0)))
        (set-field! f_imageArray this (send (ImageToRotationImageArrayUtil.jm_getInstance_0) jm_generate_3 (send this jm_getImage_0) (send this jm_getAngleIncrement_0) (get-field f_TOTAL_ANGLE _angleFactory))))))
    (define/override (jm_getInstance_1 _instanceId)
    (let ()
      (let/ec jreturn
        (if (or (not (= (get-field f_dx (get-field f_animationFactoryInitializationVisitor this)) 0)) (not (= (get-field f_dy (get-field f_animationFactoryInitializationVisitor this)) 0)))
            (begin
            (jreturn (AdjustedImageArrayRotationAnimation.jnew_6 (get-field f_imageArray this) (AngleInfo.jm_getInstance_1 (JR.i16 (send this jm_getAngleIncrement_0))) (get-field f_TOTAL_ANGLE (AngleFactory.jm_getInstance_0)) (get-field f_dx (get-field f_animationFactoryInitializationVisitor this)) (get-field f_dy (get-field f_animationFactoryInitializationVisitor this)) (send (get-field f_animationBehaviorFactory this) jm_getOrCreateInstance_0))))
            (begin
            (jreturn (AdjustedImageArrayRotationAnimation.jm_createAnimation_4 (get-field f_imageArray this) (AngleInfo.jm_getInstance_1 (JR.i16 (get-field f_angleIncrement this))) (get-field f_TOTAL_ANGLE (AngleFactory.jm_getInstance_0)) (send (get-field f_animationBehaviorFactory this) jm_getOrCreateInstance_0))))))))
    (define/public (jm_getAngleIncrement_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_angleIncrement this)))))
    (define/override (jm_setInitialScale_1 _scaleProperties)
    (let ()
      (let/ec jreturn (void))))))
(define (VectorToImageArrayRotationAnimationFactory.jclassValue) VectorToImageArrayRotationAnimationFactory%)

(define (VectorToImageArrayRotationAnimationFactory.jnew_3 _vectorInfo _basicColor _animationBehaviorFactory)
  (define this (new VectorToImageArrayRotationAnimationFactory% [jclass "VectorToImageArrayRotationAnimationFactory"]))
    (set-field! f_imageArray this (NullImage.jstatic_NULL_IMAGE_ARRAY))
    
    (let ()
      (let/ec jreturn
        (void)
        (send this jm_init_0)))
  this)



