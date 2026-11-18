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
(lazy-require ["../../../../../org/allbinary/AndroidUtil.rkt" (AndroidUtil.jm_isAndroid_0)])
(lazy-require ["../../../../../org/allbinary/graphics/color/BasicColorUtil.rkt" (BasicColorUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/image/sprite/AnimationFactorySpriteScaleUtil.rkt" (AnimationFactorySpriteScaleUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/math/PrimitiveIntUtil.rkt" (PrimitiveIntUtil.jm_getArrayInstance_0)])
(lazy-require ["./SpriteIndexedAnimation.rkt" (SpriteIndexedAnimation.jnew_4)])
(lazy-require ["./AdjustedSpriteIndexedAnimation.rkt" (AdjustedSpriteIndexedAnimation.jnew_6)])
(provide (all-defined-out))

(define SpriteIndexedAnimationFactory%
  (class BaseImageAnimationFactory%
    (super-new)
    (field [f_animationFactorySpriteScaleUtil JR.null])
    (field [f_basicColorArray JR.null])
    (define/public (jm_initHWH_0)
    (let ()
      (let/ec jreturn
        (set-field! f_dx (get-field f_animationFactoryInitializationVisitor this) (JR.i32 (- (arithmetic-shift (get-field f_width (get-field f_animationFactoryInitializationVisitor this)) (- (bitwise-and 2 31))))))
        (set-field! f_dy (get-field f_animationFactoryInitializationVisitor this) (JR.i32 (- (arithmetic-shift (get-field f_height (get-field f_animationFactoryInitializationVisitor this)) (- (bitwise-and 2 31))))))
        (when (AndroidUtil.jm_isAndroid_0)
            (begin
            (set-field! f_dx (get-field f_animationFactoryInitializationVisitor this) (JR.i32 (+ (get-field f_dx (get-field f_animationFactoryInitializationVisitor this)) 3))))))))
    (define/override (jm_getInstance_1 _instanceId)
    (let ([_sprite JR.null])
      (let/ec jreturn
        (set! _sprite (send (get-field f_animationFactorySpriteScaleUtil this) jm_createImage_5 (send this jm_getImage_0) (get-field f_width (get-field f_animationFactoryInitializationVisitor this)) (get-field f_height (get-field f_animationFactoryInitializationVisitor this)) (get-field f_scaleWidth (get-field f_scaleProperties this)) (get-field f_scaleHeight (get-field f_scaleProperties this))))
        (if (or (not (= (get-field f_dx (get-field f_animationFactoryInitializationVisitor this)) 0)) (not (= (get-field f_dy (get-field f_animationFactoryInitializationVisitor this)) 0)))
            (begin
            (jreturn (AdjustedSpriteIndexedAnimation.jnew_6 _sprite (send this jm_getImage_0) (get-field f_basicColorArray this) (get-field f_dx (get-field f_animationFactoryInitializationVisitor this)) (get-field f_dy (get-field f_animationFactoryInitializationVisitor this)) (send (get-field f_animationBehaviorFactory this) jm_getOrCreateInstance_0))))
            (begin
            (jreturn (SpriteIndexedAnimation.jnew_4 _sprite (send this jm_getImage_0) (get-field f_basicColorArray this) (send (get-field f_animationBehaviorFactory this) jm_getOrCreateInstance_0))))))))
    (define/public (jm_getInstanceAnimation_1 _animationInterface)
    (let ()
      (let/ec jreturn
        (jreturn (send this jm_getInstance_1 0)))))))
(define (SpriteIndexedAnimationFactory.jclassValue) SpriteIndexedAnimationFactory%)

(define (SpriteIndexedAnimationFactory.jnew_8 _image _basicColorArray _sequenceArray _width _height _dx _dy _animationBehaviorFactory)
  (define this (new SpriteIndexedAnimationFactory% [jclass "SpriteIndexedAnimationFactory"]))
    (set-field! f_animationFactorySpriteScaleUtil this (AnimationFactorySpriteScaleUtil.jm_getInstance_0))
    (set-field! f_basicColorArray this (get-field f_ZERO_ARRAY (BasicColorUtil.jm_getInstance_0)))
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_basicColorArray this _basicColorArray)))
  this)

(define (SpriteIndexedAnimationFactory.jm_createCWHDXY_7 _image _basicColorArray _width _height _dx _dy _animationBehaviorFactory)
    (let ()
      (let/ec jreturn
        (jreturn (SpriteIndexedAnimationFactory.jnew_8 _image _basicColorArray (PrimitiveIntUtil.jm_getArrayInstance_0) _width _height _dx _dy _animationBehaviorFactory)))))

(define (SpriteIndexedAnimationFactory.jm_createCWH_5 _image _basicColorArray _width _height _animationBehaviorFactory)
    (let ([_spriteIndexedAnimationFactory JR.null])
      (let/ec jreturn
        (set! _spriteIndexedAnimationFactory (SpriteIndexedAnimationFactory.jnew_8 _image _basicColorArray (PrimitiveIntUtil.jm_getArrayInstance_0) _width _height 0 0 _animationBehaviorFactory))
        (send _spriteIndexedAnimationFactory jm_initHWH_0)
        (jreturn _spriteIndexedAnimationFactory))))

(define (SpriteIndexedAnimationFactory.jm_createWH_4 _image _width _height _animationBehaviorFactory)
    (let ()
      (let/ec jreturn
        (jreturn (SpriteIndexedAnimationFactory.jnew_8 _image (get-field f_ZERO_ARRAY (BasicColorUtil.jm_getInstance_0)) (PrimitiveIntUtil.jm_getArrayInstance_0) _width _height 0 0 _animationBehaviorFactory)))))



