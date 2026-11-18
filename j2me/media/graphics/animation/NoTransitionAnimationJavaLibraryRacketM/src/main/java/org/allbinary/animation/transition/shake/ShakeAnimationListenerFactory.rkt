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
;; package org.allbinary.animation.transition.shake

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["./NoShakeAnimationListener.rkt" (NoShakeAnimationListener.jnew_0)])
(provide (all-defined-out))

(define ShakeAnimationListenerFactory%
  (class JObject%
    (super-new)))
(define (ShakeAnimationListenerFactory.jclassValue) ShakeAnimationListenerFactory%)

(define (ShakeAnimationListenerFactory.jnew_0)
  (define this (new ShakeAnimationListenerFactory% [jclass "ShakeAnimationListenerFactory"]))
  this)

(define (ShakeAnimationListenerFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (NoShakeAnimationListener.jnew_0)))))



