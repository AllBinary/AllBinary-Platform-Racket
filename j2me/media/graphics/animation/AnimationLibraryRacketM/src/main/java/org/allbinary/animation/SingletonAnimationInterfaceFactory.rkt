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
;; package org.allbinary.animation

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "./AnimationInterfaceFactoryInterface.rkt"
  "./ProceduralAnimationInterfaceFactoryInterface.rkt")
(provide (all-defined-out))

(define SingletonAnimationInterfaceFactory%
  (class JObject%
    (super-new)
    (field [f_animationInterface JR.null])
    (define/public (jm_getInstance_1 _instanceId)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_animationInterface this)))))
    (define/public (jm_getInstanceAnimation_1 _animationInterface)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_animationInterface this)))))
    (define/public (jm_setInitialScale_1 _scaleProperties)
    (let ()
      (let/ec jreturn (void))))))
(define (SingletonAnimationInterfaceFactory.jclassValue) SingletonAnimationInterfaceFactory%)

(define (SingletonAnimationInterfaceFactory.jnew_1 _animationInterface)
  (define this (new SingletonAnimationInterfaceFactory% [jclass "SingletonAnimationInterfaceFactory"]))
    
    (let ()
      (let/ec jreturn
        (set-field! f_animationInterface this _animationInterface)))
  this)



