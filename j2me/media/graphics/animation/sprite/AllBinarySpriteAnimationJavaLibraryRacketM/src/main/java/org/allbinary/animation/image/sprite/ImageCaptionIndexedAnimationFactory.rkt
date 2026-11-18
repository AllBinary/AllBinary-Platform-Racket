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
  "../../../../../org/allbinary/animation/AnimationInterfaceFactoryInterface.rkt")
(lazy-require ["../../../../../org/allbinary/animation/AnimationBehaviorFactory.rkt" (AnimationBehaviorFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/animation/caption/CaptionIndexedAnimation.rkt" (CaptionIndexedAnimation.jnew_9)])
(lazy-require ["../../../../../org/allbinary/animation/image/ImageAnimation.rkt" (ImageAnimation.jnew_2)])
(lazy-require ["../../../../../org/allbinary/graphics/color/BasicColorUtil.rkt" (BasicColorUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/image/AnimationFactoryImageScaleUtil.rkt" (AnimationFactoryImageScaleUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/image/sprite/AnimationFactorySpriteScaleUtil.rkt" (AnimationFactorySpriteScaleUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/communication/log/ForcedLogUtil.rkt" (ForcedLogUtil.jm_log_2)])
(lazy-require ["../../../../../org/allbinary/media/ScaleProperties.rkt" (ScaleProperties.jstatic_instance)])
(lazy-require ["./SpriteIndexedAnimation.rkt" (SpriteIndexedAnimation.jnew_4)])
(provide (all-defined-out))

(define ImageCaptionIndexedAnimationFactory%
  (class JObject%
    (super-new)
    (field [f_animationFactoryImageScaleUtil JR.null])
    (field [f_animationFactorySpriteScaleUtil JR.null])
    (field [f_captionImage JR.null])
    (field [f_spriteMovieImage JR.null])
    (field [f_frameWidth 0])
    (field [f_frameHeight 0])
    (field [f_captionDx 0])
    (field [f_captionDy 0])
    (field [f_dx 0])
    (field [f_dy 0])
    (field [f_time 0])
    (field [f_soundInterface JR.null])
    (field [f_scaleProperties JR.null])
    (field [f_animationBehaviorFactory JR.null])
    (define/public (jm_getInstance_1 _instanceId)
    (let ([_scaledImage JR.null][_animationInterface JR.null][_sprite JR.null][_movieIndexedAnimationInterface JR.null][_player JR.null])
      (let/ec jreturn
        (set! _scaledImage (send (get-field f_animationFactoryImageScaleUtil this) jm_createImage_5 (get-field f_captionImage this) (send (get-field f_captionImage this) jm_getWidth_0) (send (get-field f_captionImage this) jm_getHeight_0) (get-field f_scaleWidth (get-field f_scaleProperties this)) (get-field f_scaleHeight (get-field f_scaleProperties this))))
        (set! _animationInterface (ImageAnimation.jnew_2 _scaledImage (send (get-field f_animationBehaviorFactory this) jm_getOrCreateInstance_0)))
        (set! _sprite (send (get-field f_animationFactorySpriteScaleUtil this) jm_createImage_5 (get-field f_spriteMovieImage this) (get-field f_frameWidth this) (get-field f_frameHeight this) (get-field f_scaleWidth (get-field f_scaleProperties this)) (get-field f_scaleHeight (get-field f_scaleProperties this))))
        (set! _movieIndexedAnimationInterface (SpriteIndexedAnimation.jnew_4 _sprite (get-field f_spriteMovieImage this) (get-field f_ZERO_ARRAY (BasicColorUtil.jm_getInstance_0)) (send (get-field f_animationBehaviorFactory this) jm_getOrCreateInstance_0)))
        (set! _player (send (get-field f_soundInterface this) jm_getPlayerP_0))
        (when (JR.null? _player)
            (begin
            (raise (JR.newException "Exception" "Sound Was not Initialized"))))
        (jreturn (CaptionIndexedAnimation.jnew_9 _animationInterface _movieIndexedAnimationInterface _player (get-field f_captionDx this) (get-field f_captionDy this) (get-field f_dx this) (get-field f_dy this) (get-field f_time this) (send (get-field f_animationBehaviorFactory this) jm_getOrCreateInstance_0))))))
    (define/public (jm_setInitialScale_1 _scaleProperties)
    (let ()
      (let/ec jreturn
        (set-field! f_scaleProperties this _scaleProperties))))))
(define (ImageCaptionIndexedAnimationFactory.jclassValue) ImageCaptionIndexedAnimationFactory%)

(define (ImageCaptionIndexedAnimationFactory.jnew_11 _captionImage _spriteMovieImage _soundInterface _frameWidth _frameHeight _captionDx _captionDy _dx _dy _time _animationBehaviorFactory)
  (define this (new ImageCaptionIndexedAnimationFactory% [jclass "ImageCaptionIndexedAnimationFactory"]))
    (set-field! f_animationFactoryImageScaleUtil this (AnimationFactoryImageScaleUtil.jm_getInstance_0))
    (set-field! f_animationFactorySpriteScaleUtil this (AnimationFactorySpriteScaleUtil.jm_getInstance_0))
    
    
    
    
    
    
    
    
    
    
    (set-field! f_scaleProperties this (ScaleProperties.jstatic_instance))
    
    (let ()
      (let/ec jreturn
        (when (eq? _animationBehaviorFactory (AnimationBehaviorFactory.jm_getInstance_0))
            (begin
            (ForcedLogUtil.jm_log_2 "Using default AnimationBehaviorFactory with IndexedAnimationFactory" this)))
        (set-field! f_captionImage this _captionImage)
        (set-field! f_spriteMovieImage this _spriteMovieImage)
        (set-field! f_frameWidth this _frameWidth)
        (set-field! f_frameHeight this _frameHeight)
        (set-field! f_captionDx this _captionDx)
        (set-field! f_captionDy this _captionDy)
        (set-field! f_dx this _dx)
        (set-field! f_dy this _dy)
        (set-field! f_time this _time)
        (set-field! f_soundInterface this _soundInterface)
        (set-field! f_animationBehaviorFactory this _animationBehaviorFactory)))
  this)



