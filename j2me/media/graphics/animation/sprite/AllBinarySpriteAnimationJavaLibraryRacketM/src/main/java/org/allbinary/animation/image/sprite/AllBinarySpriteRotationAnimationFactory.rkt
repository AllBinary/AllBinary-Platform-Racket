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
;; package org.allbinary.animation.image.sprite

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface.rkt"
  "../../../../../org/allbinary/animation/image/BaseImageAnimationFactory.rkt")
(lazy-require ["../../../../../org/allbinary/animation/AnimationBehaviorFactory.rkt" (AnimationBehaviorFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/image/sprite/AnimationFactorySpriteScaleUtil.rkt" (AnimationFactorySpriteScaleUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/communication/log/ForcedLogUtil.rkt" (ForcedLogUtil.jm_log_2)])
(lazy-require ["../../../../../org/allbinary/logic/math/PrimitiveIntUtil.rkt" (PrimitiveIntUtil.jm_getArrayInstance_0)])
(lazy-require ["./AllBinarySpriteRotationAnimation.rkt" (AllBinarySpriteRotationAnimation.jnew_3)])
(lazy-require ["./AllBinaryAdjustedSpriteRotationAnimation.rkt" (AllBinaryAdjustedSpriteRotationAnimation.jnew_5)])
(provide (all-defined-out))

(define AllBinarySpriteRotationAnimationFactory%
  (class BaseImageAnimationFactory%
    (super-new)
    (field [f_animationFactorySpriteScaleUtil JR.null])
    (define/public (jm_init_2 _dx _dy)
    (let ()
      (let/ec jreturn
        (set-field! f_dx (get-field f_animationFactoryInitializationVisitor this) _dx)
        (set-field! f_dy (get-field f_animationFactoryInitializationVisitor this) _dy))))
    (define/public (jm_initWH_2 _dx _dy)
    (let ()
      (let/ec jreturn
        (send this jm_init_2 _dx _dy)
        (set-field! f_dx (get-field f_animationFactoryInitializationVisitor this) (JR.i32 (+ (get-field f_dx (get-field f_animationFactoryInitializationVisitor this)) (JR.idiv (JR.i32 (- (get-field f_width (get-field f_animationFactoryInitializationVisitor this)))) 5))))
        (set-field! f_dy (get-field f_animationFactoryInitializationVisitor this) (JR.i32 (+ (get-field f_dy (get-field f_animationFactoryInitializationVisitor this)) (JR.idiv (JR.i32 (- (get-field f_height (get-field f_animationFactoryInitializationVisitor this)))) 5)))))))
    (define/override (jm_getInstance_1 _instanceId)
    (let ([_sprite JR.null])
      (let/ec jreturn
        (set! _sprite (send (get-field f_animationFactorySpriteScaleUtil this) jm_createImage_5 (send this jm_getImage_0) (get-field f_width (get-field f_animationFactoryInitializationVisitor this)) (get-field f_height (get-field f_animationFactoryInitializationVisitor this)) (get-field f_scaleWidth (get-field f_scaleProperties this)) (get-field f_scaleHeight (get-field f_scaleProperties this))))
        (if (or (not (= (get-field f_dx (get-field f_animationFactoryInitializationVisitor this)) 0)) (not (= (get-field f_dy (get-field f_animationFactoryInitializationVisitor this)) 0)))
            (begin
            (jreturn (AllBinaryAdjustedSpriteRotationAnimation.jnew_5 _sprite (send this jm_getImage_0) (get-field f_dx (get-field f_animationFactoryInitializationVisitor this)) (get-field f_dy (get-field f_animationFactoryInitializationVisitor this)) (send (get-field f_animationBehaviorFactory this) jm_getOrCreateInstance_0))))
            (begin
            (jreturn (AllBinarySpriteRotationAnimation.jnew_3 _sprite (send this jm_getImage_0) (send (get-field f_animationBehaviorFactory this) jm_getOrCreateInstance_0))))))))
    (define/public (jm_getInstanceAnimation_1 _animationInterface)
    (let ()
      (let/ec jreturn
        (jreturn (send this jm_getInstance_1 0)))))))
(define (AllBinarySpriteRotationAnimationFactory.jclassValue) AllBinarySpriteRotationAnimationFactory%)

(define (AllBinarySpriteRotationAnimationFactory.jnew_7 _image _sequenceArray _width _height _dx _dy _animationBehaviorFactory)
  (define this (new AllBinarySpriteRotationAnimationFactory% [jclass "AllBinarySpriteRotationAnimationFactory"]))
    (set-field! f_animationFactorySpriteScaleUtil this (AnimationFactorySpriteScaleUtil.jm_getInstance_0))
    (let ()
      (let/ec jreturn
        (void)
        (when (eq? _animationBehaviorFactory (AnimationBehaviorFactory.jm_getInstance_0))
            (begin
            (ForcedLogUtil.jm_log_2 "Using default AnimationBehaviorFactory with IndexedAnimationFactory" this)))))
  this)

(define (AllBinarySpriteRotationAnimationFactory.jm_createWHDY_4 _image _dx _dy _animationBehaviorFactory)
    (let ([_spriteRotationAnimationFactory JR.null])
      (let/ec jreturn
        (set! _spriteRotationAnimationFactory (AllBinarySpriteRotationAnimationFactory.jnew_7 _image (PrimitiveIntUtil.jm_getArrayInstance_0) (arithmetic-shift (send _image jm_getHeight_0) (- (bitwise-and 2 31))) (arithmetic-shift (send _image jm_getHeight_0) (- (bitwise-and 2 31))) 0 0 _animationBehaviorFactory))
        (send _spriteRotationAnimationFactory jm_initWH_2 _dx _dy)
        (jreturn _spriteRotationAnimationFactory))))

(define (AllBinarySpriteRotationAnimationFactory.jm_createWH_2 _image _animationBehaviorFactory)
    (let ()
      (let/ec jreturn
        (jreturn (AllBinarySpriteRotationAnimationFactory.jm_createWHDY_4 _image 0 0 _animationBehaviorFactory)))))

(define (AllBinarySpriteRotationAnimationFactory.jm_createDXY_4 _image _dx _dy _animationBehaviorFactory)
    (let ([_spriteRotationAnimationFactory JR.null])
      (let/ec jreturn
        (set! _spriteRotationAnimationFactory (AllBinarySpriteRotationAnimationFactory.jnew_7 _image (PrimitiveIntUtil.jm_getArrayInstance_0) (send _image jm_getHeight_0) (send _image jm_getHeight_0) 0 0 _animationBehaviorFactory))
        (send _spriteRotationAnimationFactory jm_init_2 _dx _dy)
        (jreturn _spriteRotationAnimationFactory))))

(define (AllBinarySpriteRotationAnimationFactory.jm_createDXYQ_4 _image _dx _dy _animationBehaviorFactory)
    (let ([_spriteRotationAnimationFactory JR.null])
      (let/ec jreturn
        (set! _spriteRotationAnimationFactory (AllBinarySpriteRotationAnimationFactory.jnew_7 _image (PrimitiveIntUtil.jm_getArrayInstance_0) (arithmetic-shift (send _image jm_getHeight_0) (- (bitwise-and 2 31))) (arithmetic-shift (send _image jm_getHeight_0) (- (bitwise-and 2 31))) 0 0 _animationBehaviorFactory))
        (send _spriteRotationAnimationFactory jm_init_2 _dx _dy)
        (jreturn _spriteRotationAnimationFactory))))

(define (AllBinarySpriteRotationAnimationFactory.jm_createQ_2 _image _animationBehaviorFactory)
    (let ()
      (let/ec jreturn
        (jreturn (AllBinarySpriteRotationAnimationFactory.jnew_7 _image (PrimitiveIntUtil.jm_getArrayInstance_0) (arithmetic-shift (send _image jm_getHeight_0) (- (bitwise-and 2 31))) (arithmetic-shift (send _image jm_getHeight_0) (- (bitwise-and 2 31))) 0 0 _animationBehaviorFactory)))))

(define (AllBinarySpriteRotationAnimationFactory.jm_createWHF_2 _image _animationBehaviorFactory)
    (let ()
      (let/ec jreturn
        (jreturn (AllBinarySpriteRotationAnimationFactory.jnew_7 _image (PrimitiveIntUtil.jm_getArrayInstance_0) (send _image jm_getHeight_0) (send _image jm_getHeight_0) 0 0 _animationBehaviorFactory)))))



