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
(lazy-require ["../../../../org/allbinary/logic/math/PrimitiveIntUtil.rkt" (PrimitiveIntUtil.jm_getArrayInstance_0)])
(lazy-require ["./BottomToTopImageAnimation.rkt" (BottomToTopImageAnimation.jnew_2)])
(provide (all-defined-out))

(define BottomToTopImageAnimationFactory%
  (class BaseImageAnimationFactory%
    (super-new)
    (define/override (jm_getInstance_1 _instanceId)
    (let ([_scaledImage JR.null])
      (let/ec jreturn
        (set! _scaledImage (JR.className (get-field f_animationFactoryImageScaleUtil this)))
        (jreturn (BottomToTopImageAnimation.jnew_2 _scaledImage (send (get-field f_animationBehaviorFactory this) jm_getOrCreateInstance_0))))))))
(define (BottomToTopImageAnimationFactory.jclassValue) BottomToTopImageAnimationFactory%)

(define (BottomToTopImageAnimationFactory.jnew_2 _image _animationBehaviorFactory)
  (define this (new BottomToTopImageAnimationFactory% [jclass "BottomToTopImageAnimationFactory"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)



