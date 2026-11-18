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
(lazy-require ["../../../../org/allbinary/animation/AnimationBehavior.rkt" (AnimationBehavior.jm_getInstance_0)])
(lazy-require ["./ImageArrayAnimation.rkt" (ImageArrayAnimation.jnew_2)])
(lazy-require ["./AdjustedImageArrayAnimation.rkt" (AdjustedImageArrayAnimation.jnew_4)])
(provide (all-defined-out))

(define ImageArrayAnimationFactory%
  (class JObject%
    (super-new)
    (field [f_dx 0])
    (field [f_dy 0])
    (field [f_imageArray JR.null])
    (field [f_animationBehaviorFactory JR.null])
    (define/public (jm_getInstance_1 _instanceId)
    (let ()
      (let/ec jreturn
        (if (or (not (= (get-field f_dx this) 0)) (not (= (get-field f_dy this) 0)))
            (begin
            (jreturn (AdjustedImageArrayAnimation.jnew_4 (get-field f_imageArray this) (get-field f_dx this) (get-field f_dy this) (send (get-field f_animationBehaviorFactory this) jm_getOrCreateInstance_0))))
            (begin
            (jreturn (ImageArrayAnimation.jnew_2 (get-field f_imageArray this) (AnimationBehavior.jm_getInstance_0))))))))
    (define/public (jm_setInitialScale_1 _scaleProperties)
    (let ()
      (let/ec jreturn (void))))))
(define (ImageArrayAnimationFactory.jclassValue) ImageArrayAnimationFactory%)

(define (ImageArrayAnimationFactory.jnew_4 _imageArray _dx _dy _animationBehaviorFactory)
  (define this (new ImageArrayAnimationFactory% [jclass "ImageArrayAnimationFactory"]))
    (set-field! f_dx this 0)
    (set-field! f_dy this 0)
    
    
    (let ()
      (let/ec jreturn
        (set-field! f_imageArray this _imageArray)
        (set-field! f_animationBehaviorFactory this _animationBehaviorFactory)
        (set-field! f_dx this _dx)
        (set-field! f_dy this _dy)))
  this)



