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
(lazy-require ["../../../../org/allbinary/animation/AnimationBehaviorFactory.rkt" (AnimationBehaviorFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/game/configuration/GameConfigurationCentral.rkt" (GameConfigurationCentral.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/math/PrimitiveIntUtil.rkt" (PrimitiveIntUtil.jm_getArrayInstance_0)])
(lazy-require ["../../../../org/allbinary/math/AngleFactory.rkt" (AngleFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/math/AngleInfo.rkt" (AngleInfo.jm_getInstance_1)])
(lazy-require ["../../../../org/allbinary/media/image/ImageToRotationImageArrayUtil.rkt" (ImageToRotationImageArrayUtil.jm_getInstance_0)])
(lazy-require ["./ImageArrayRotationAnimation.rkt" (ImageArrayRotationAnimation.jnew_4)])
(lazy-require ["./AdjustedImageArrayRotationAnimation.rkt" (AdjustedImageArrayRotationAnimation.jnew_6)])
(provide (all-defined-out))

(define AllBinaryArrayImageRotationAnimationFactory%
  (class BaseImageAnimationFactory%
    (super-new)
    (field [f_imageArray JR.null])
    (field [f_angleIncrement 0])
    (define/public (jm_init_0)
    (let ()
      (let/ec jreturn
        (send this jm_setImageArray_1 (send (ImageToRotationImageArrayUtil.jm_getInstance_0) jm_generate_3 (send this jm_getImage_0) (send this jm_getAngleIncrement_0) (get-field f_TOTAL_ANGLE (AngleFactory.jm_getInstance_0)))))))
    (define/public (jm_initDXY_2 _dx _dy)
    (let ()
      (let/ec jreturn
        (set-field! f_dx (get-field f_animationFactoryInitializationVisitor this) _dx)
        (set-field! f_dy (get-field f_animationFactoryInitializationVisitor this) _dy)
        (set-field! f_originalDx (get-field f_animationFactoryInitializationVisitor this) _dx)
        (set-field! f_originalDy (get-field f_animationFactoryInitializationVisitor this) _dy))))
    (define/override (jm_getInstance_1 _instanceId)
    (let ([_scaledImageArray JR.null][_size JR.null][_image JR.null][_index JR.null])
      (let/ec jreturn
        (set! _scaledImageArray (JR.newArray JR.null (vector-length (get-field f_imageArray this))))
        (set! _size (vector-length _scaledImageArray))
        (set! _image (send this jm_getImage_0))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (vector-set! _scaledImageArray _index (JR.className (get-field f_animationFactoryImageScaleUtil this))))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (if (or (not (= (get-field f_dx (get-field f_animationFactoryInitializationVisitor this)) 0)) (not (= (get-field f_dy (get-field f_animationFactoryInitializationVisitor this)) 0)))
            (begin
            (JR.className (get-field f_animationFactoryImageScaleUtil this))
            (jreturn (AdjustedImageArrayRotationAnimation.jnew_6 _scaledImageArray (AngleInfo.jm_getInstance_1 (JR.i16 (send this jm_getAngleIncrement_0))) (get-field f_TOTAL_ANGLE (AngleFactory.jm_getInstance_0)) (get-field f_dx (get-field f_animationFactoryInitializationVisitor this)) (get-field f_dy (get-field f_animationFactoryInitializationVisitor this)) (send (get-field f_animationBehaviorFactory this) jm_getOrCreateInstance_0))))
            (begin
            (jreturn (ImageArrayRotationAnimation.jnew_4 _scaledImageArray (AngleInfo.jm_getInstance_1 (JR.i16 (send this jm_getAngleIncrement_0))) (get-field f_TOTAL_ANGLE (AngleFactory.jm_getInstance_0)) (send (get-field f_animationBehaviorFactory this) jm_getOrCreateInstance_0))))))))
    (define/public (jm_setImageArray_1 _imageArray)
    (let ()
      (let/ec jreturn
        (set-field! f_imageArray this _imageArray))))
    (define/public (jm_getAngleIncrement_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_angleIncrement this)))))))
(define (AllBinaryArrayImageRotationAnimationFactory.jclassValue) AllBinaryArrayImageRotationAnimationFactory%)

(define (AllBinaryArrayImageRotationAnimationFactory.jnew_5 _image _width _height _angleIncrement _animationBehaviorFactory)
  (define this (new AllBinaryArrayImageRotationAnimationFactory% [jclass "AllBinaryArrayImageRotationAnimationFactory"]))
    (set-field! f_imageArray this (NullImage.jstatic_NULL_IMAGE_ARRAY))
    
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_angleIncrement this _angleIncrement)
        (send this jm_init_0)))
  this)

(define (AllBinaryArrayImageRotationAnimationFactory.jm_createFactory_3 _image _dx _dy)
    (let ([_arrayImageRotationAnimationFactory JR.null])
      (let/ec jreturn
        (set! _arrayImageRotationAnimationFactory (AllBinaryArrayImageRotationAnimationFactory.jnew_5 _image (send _image jm_getWidth_0) (send _image jm_getHeight_0) (JR.idiv (get-field f_TOTAL_ANGLE (AngleFactory.jm_getInstance_0)) (send (GameConfigurationCentral.jm_getInstance_0) jm_getGameControlFidelity_0)) (AnimationBehaviorFactory.jm_getInstance_0)))
        (send _arrayImageRotationAnimationFactory jm_initDXY_2 _dx _dy)
        (jreturn _arrayImageRotationAnimationFactory))))

(define (AllBinaryArrayImageRotationAnimationFactory.jm_createFactoryA_4 _image _dx _dy _angleIncrement)
    (let ([_arrayImageRotationAnimationFactory JR.null])
      (let/ec jreturn
        (set! _arrayImageRotationAnimationFactory (AllBinaryArrayImageRotationAnimationFactory.jnew_5 _image (send _image jm_getWidth_0) (send _image jm_getHeight_0) _angleIncrement (AnimationBehaviorFactory.jm_getInstance_0)))
        (send _arrayImageRotationAnimationFactory jm_initDXY_2 _dx _dy)
        (jreturn _arrayImageRotationAnimationFactory))))



