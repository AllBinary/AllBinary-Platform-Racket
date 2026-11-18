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
  "./BasicAnimationInterfaceFactoryInterface.rkt")
(provide (all-defined-out))

(define AnimationInterfaceFactoryInterface%
  (class JObject%
    (super-new)
    (define/public (jm_getInstance_1 _instanceId)
      (raise (JR.newException "AbstractMethodError" "getInstance")))
    (define/public (jm_setInitialScale_1 _scaleProperties)
      (raise (JR.newException "AbstractMethodError" "setInitialScale")))))
(define (AnimationInterfaceFactoryInterface.jclassValue) AnimationInterfaceFactoryInterface%)

(define (AnimationInterfaceFactoryInterface.jnew_0)
  (define this (new AnimationInterfaceFactoryInterface% [jclass "AnimationInterfaceFactoryInterface"]))
  this)



