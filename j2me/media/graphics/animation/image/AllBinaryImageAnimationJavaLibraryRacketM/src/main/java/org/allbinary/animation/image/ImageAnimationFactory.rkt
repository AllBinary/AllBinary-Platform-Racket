#lang racket/base
;; 
;; AllBinary Open License Version 1 
;; Copyright (c) 2022 AllBinary 
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
(lazy-require ["../../../../org/allbinary/animation/AnimationBehaviorFactory.rkt" (AnimationBehaviorFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/graphics/opengles/OpenGLUtil.rkt" (OpenGLUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/math/PrimitiveIntUtil.rkt" (PrimitiveIntUtil.jm_getArrayInstance_0)])
(lazy-require ["./ImageAnimation.rkt" (ImageAnimation.jnew_2)])
(lazy-require ["./AdjustedImageAnimation.rkt" (AdjustedImageAnimation.jnew_4)])
(provide (all-defined-out))

(define ImageAnimationFactory%
  (class BaseImageAnimationFactory%
    (super-new)
    (define/override (jm_getInstance_1 _instanceId)
    (let ([_scaledImage JR.null][_openGLUtil JR.null])
      (let/ec jreturn
        (set! _scaledImage (JR.className (get-field f_animationFactoryImageScaleUtil this)))
        (set! _openGLUtil (OpenGLUtil.jm_getInstance_0))
        (set! _scaledImage (send _openGLUtil jm_addImage_1 _scaledImage))
        (if (or (not (= (get-field f_dx (get-field f_animationFactoryInitializationVisitor this)) 0)) (not (= (get-field f_dy (get-field f_animationFactoryInitializationVisitor this)) 0)))
            (begin
            (JR.className (get-field f_animationFactoryImageScaleUtil this))
            (jreturn (AdjustedImageAnimation.jnew_4 _scaledImage (get-field f_dx (get-field f_animationFactoryInitializationVisitor this)) (get-field f_dy (get-field f_animationFactoryInitializationVisitor this)) (send (get-field f_animationBehaviorFactory this) jm_getOrCreateInstance_0))))
            (begin
            (jreturn (ImageAnimation.jnew_2 _scaledImage (send (get-field f_animationBehaviorFactory this) jm_getOrCreateInstance_0))))))))))
(define (ImageAnimationFactory.jclassValue) ImageAnimationFactory%)

(define (ImageAnimationFactory.jnew_6 _image _width _height _dx _dy _animationBehaviorFactory)
  (define this (new ImageAnimationFactory% [jclass "ImageAnimationFactory"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)

(define (ImageAnimationFactory.jm_createFactory_1 _image)
    (let ()
      (let/ec jreturn
        (jreturn (ImageAnimationFactory.jnew_6 _image (send _image jm_getWidth_0) (send _image jm_getHeight_0) 0 0 (AnimationBehaviorFactory.jm_getInstance_0))))))



