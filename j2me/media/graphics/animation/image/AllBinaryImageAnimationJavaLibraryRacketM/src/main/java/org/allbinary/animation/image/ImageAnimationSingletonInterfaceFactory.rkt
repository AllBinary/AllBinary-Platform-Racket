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
  "../../../../org/allbinary/animation/SingletonAnimationInterfaceFactory.rkt")
(lazy-require ["../../../../org/allbinary/animation/AnimationBehavior.rkt" (AnimationBehavior.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/image/AnimationFrameToImageUtil.rkt" (AnimationFrameToImageUtil.jm_getInstance_0)])
(lazy-require ["./ImageAnimation.rkt" (ImageAnimation.jnew_2)])
(provide (all-defined-out))

(define ImageAnimationSingletonInterfaceFactory%
  (class SingletonAnimationInterfaceFactory%
    (super-new)))
(define (ImageAnimationSingletonInterfaceFactory.jclassValue) ImageAnimationSingletonInterfaceFactory%)

(define (ImageAnimationSingletonInterfaceFactory.jnew_3 _animationInterface _width _height)
  (define this (new ImageAnimationSingletonInterfaceFactory% [jclass "ImageAnimationSingletonInterfaceFactory"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)



