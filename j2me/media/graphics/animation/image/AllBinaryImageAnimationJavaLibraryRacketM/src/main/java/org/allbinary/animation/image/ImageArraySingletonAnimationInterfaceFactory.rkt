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
(lazy-require ["./ImageArrayAnimation.rkt" (ImageArrayAnimation.jnew_2)])
(provide (all-defined-out))

(define ImageArraySingletonAnimationInterfaceFactory%
  (class SingletonAnimationInterfaceFactory%
    (super-new)))
(define (ImageArraySingletonAnimationInterfaceFactory.jclassValue) ImageArraySingletonAnimationInterfaceFactory%)

(define (ImageArraySingletonAnimationInterfaceFactory.jnew_1 _imageArray)
  (define this (new ImageArraySingletonAnimationInterfaceFactory% [jclass "ImageArraySingletonAnimationInterfaceFactory"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)



