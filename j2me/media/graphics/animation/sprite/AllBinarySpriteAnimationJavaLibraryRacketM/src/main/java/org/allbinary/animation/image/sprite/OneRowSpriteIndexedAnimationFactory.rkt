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
  "../../../../../org/allbinary/animation/image/BaseImageAnimationFactory.rkt")
(lazy-require ["../../../../../org/allbinary/graphics/color/BasicColorUtil.rkt" (BasicColorUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/image/sprite/AnimationFactorySpriteScaleUtil.rkt" (AnimationFactorySpriteScaleUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/math/PrimitiveIntUtil.rkt" (PrimitiveIntUtil.jm_getArrayInstance_0)])
(lazy-require ["./SpriteIndexedAnimation.rkt" (SpriteIndexedAnimation.jnew_4)])
(lazy-require ["./AdjustedSpriteIndexedAnimation.rkt" (AdjustedSpriteIndexedAnimation.jnew_6)])
(provide (all-defined-out))

(define OneRowSpriteIndexedAnimationFactory%
  (class BaseImageAnimationFactory%
    (super-new)
    (field [f_animationFactorySpriteScaleUtil JR.null])
    (define/public (jm_init_2 _dx _dy)
    (let ()
      (let/ec jreturn
        (set-field! f_dx (get-field f_animationFactoryInitializationVisitor this) _dx)
        (set-field! f_dy (get-field f_animationFactoryInitializationVisitor this) _dy))))
    (define/public (jm_initW_1 _dx)
    (let ()
      (let/ec jreturn
        (send this jm_init_2 _dx 0)
        (set-field! f_dx (get-field f_animationFactoryInitializationVisitor this) (JR.i32 (+ (get-field f_dx (get-field f_animationFactoryInitializationVisitor this)) (JR.i32 (- (arithmetic-shift (get-field f_width (get-field f_animationFactoryInitializationVisitor this)) (- (bitwise-and 2 31)))))))))))
    (define/override (jm_getInstance_1 _instanceId)
    (let ([_sprite JR.null])
      (let/ec jreturn
        (set! _sprite (send (get-field f_animationFactorySpriteScaleUtil this) jm_createImage_5 (send this jm_getImage_0) (get-field f_width (get-field f_animationFactoryInitializationVisitor this)) (get-field f_height (get-field f_animationFactoryInitializationVisitor this)) (get-field f_scaleWidth (get-field f_scaleProperties this)) (get-field f_scaleHeight (get-field f_scaleProperties this))))
        (if (or (not (= (get-field f_dx (get-field f_animationFactoryInitializationVisitor this)) 0)) (not (= (get-field f_dy (get-field f_animationFactoryInitializationVisitor this)) 0)))
            (begin
            (jreturn (AdjustedSpriteIndexedAnimation.jnew_6 _sprite (send this jm_getImage_0) (get-field f_ZERO_ARRAY (BasicColorUtil.jm_getInstance_0)) (get-field f_dx (get-field f_animationFactoryInitializationVisitor this)) (get-field f_dy (get-field f_animationFactoryInitializationVisitor this)) (send (get-field f_animationBehaviorFactory this) jm_getOrCreateInstance_0))))
            (begin
            (jreturn (SpriteIndexedAnimation.jnew_4 _sprite (send this jm_getImage_0) (get-field f_ZERO_ARRAY (BasicColorUtil.jm_getInstance_0)) (send (get-field f_animationBehaviorFactory this) jm_getOrCreateInstance_0))))))))))
(define (OneRowSpriteIndexedAnimationFactory.jclassValue) OneRowSpriteIndexedAnimationFactory%)

(define (OneRowSpriteIndexedAnimationFactory.jnew_7 _image _sequenceArray _width _height _dx _dy _animationBehaviorFactory)
  (define this (new OneRowSpriteIndexedAnimationFactory% [jclass "OneRowSpriteIndexedAnimationFactory"]))
    (set-field! f_animationFactorySpriteScaleUtil this (AnimationFactorySpriteScaleUtil.jm_getInstance_0))
    (let ()
      (let/ec jreturn
        (void)))
  this)

(define (OneRowSpriteIndexedAnimationFactory.jm_createFactoryDX_3 _image _dx _animationBehaviorFactory)
    (let ([_oneRowSpriteIndexedAnimationFactory JR.null])
      (let/ec jreturn
        (set! _oneRowSpriteIndexedAnimationFactory (OneRowSpriteIndexedAnimationFactory.jnew_7 _image (PrimitiveIntUtil.jm_getArrayInstance_0) (send _image jm_getHeight_0) (send _image jm_getHeight_0) 0 0 _animationBehaviorFactory))
        (send _oneRowSpriteIndexedAnimationFactory jm_initW_1 _dx)
        (jreturn _oneRowSpriteIndexedAnimationFactory))))

(define (OneRowSpriteIndexedAnimationFactory.jm_createFactoryDXY_4 _image _dx _dy _animationBehaviorFactory)
    (let ([_oneRowSpriteIndexedAnimationFactory JR.null])
      (let/ec jreturn
        (set! _oneRowSpriteIndexedAnimationFactory (OneRowSpriteIndexedAnimationFactory.jnew_7 _image (PrimitiveIntUtil.jm_getArrayInstance_0) (send _image jm_getHeight_0) (send _image jm_getHeight_0) 0 0 _animationBehaviorFactory))
        (send _oneRowSpriteIndexedAnimationFactory jm_init_2 _dx _dy)
        (jreturn _oneRowSpriteIndexedAnimationFactory))))

(define (OneRowSpriteIndexedAnimationFactory.jm_createFactoryWH_4 _image _width _height _animationBehaviorFactory)
    (let ()
      (let/ec jreturn
        (jreturn (OneRowSpriteIndexedAnimationFactory.jnew_7 _image (PrimitiveIntUtil.jm_getArrayInstance_0) _width _height 0 0 _animationBehaviorFactory)))))

(define (OneRowSpriteIndexedAnimationFactory.jm_createFactory_2 _image _animationBehaviorFactory)
    (let ()
      (let/ec jreturn
        (jreturn (OneRowSpriteIndexedAnimationFactory.jnew_7 _image (PrimitiveIntUtil.jm_getArrayInstance_0) (send _image jm_getHeight_0) (send _image jm_getHeight_0) 0 0 _animationBehaviorFactory)))))



