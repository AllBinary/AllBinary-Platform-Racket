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
(lazy-require ["../../../../../org/allbinary/image/sprite/AnimationFactorySpriteScaleUtil.rkt" (AnimationFactorySpriteScaleUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/math/PrimitiveIntUtil.rkt" (PrimitiveIntUtil.jm_getArrayInstance_0)])
(lazy-require ["./SpriteIndexedAnimation.rkt" (SpriteIndexedAnimation.jnew_4)])
(provide (all-defined-out))

(define ColorCompositeSpriteIndexedAnimationFactory%
  (class BaseImageAnimationFactory%
    (super-new)
    (field [f_animationFactorySpriteScaleUtil JR.null])
    (field [f_basicColorArray JR.null])
    (define/override (jm_getInstance_1 _instanceId)
    (let ([_sprite JR.null])
      (let/ec jreturn
        (set! _sprite (send (get-field f_animationFactorySpriteScaleUtil this) jm_createImage_5 (send this jm_getImage_0) (get-field f_width (get-field f_animationFactoryInitializationVisitor this)) (get-field f_height (get-field f_animationFactoryInitializationVisitor this)) (get-field f_scaleWidth (get-field f_scaleProperties this)) (get-field f_scaleHeight (get-field f_scaleProperties this))))
        (jreturn (SpriteIndexedAnimation.jnew_4 _sprite (send this jm_getImage_0) (get-field f_basicColorArray this) (send (get-field f_animationBehaviorFactory this) jm_getOrCreateInstance_0))))))
    (define/public (jm_getInstanceAnimation_1 _animationInterface)
    (let ()
      (let/ec jreturn
        (jreturn (send this jm_getInstance_1 0)))))))
(define (ColorCompositeSpriteIndexedAnimationFactory.jclassValue) ColorCompositeSpriteIndexedAnimationFactory%)

(define (ColorCompositeSpriteIndexedAnimationFactory.jnew_5 _image _basicColorArray _width _height _animationBehaviorFactory)
  (define this (new ColorCompositeSpriteIndexedAnimationFactory% [jclass "ColorCompositeSpriteIndexedAnimationFactory"]))
    (set-field! f_animationFactorySpriteScaleUtil this (AnimationFactorySpriteScaleUtil.jm_getInstance_0))
    
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_basicColorArray this _basicColorArray)))
  this)



