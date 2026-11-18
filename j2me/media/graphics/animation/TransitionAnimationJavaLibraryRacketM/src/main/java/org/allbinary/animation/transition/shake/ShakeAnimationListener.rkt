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
(provide (all-defined-out))

(define ShakeAnimationListener%
  (class JObject%
    (super-new)
    (define/public (jm_onSmallShakeEvent_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_onMediumShakeEvent_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_onLargeShakeEvent_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_onShakeEvent_1 _shakeEvent)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_getType_0)
    (let ()
      (let/ec jreturn
        (jreturn 0))))))
(define (ShakeAnimationListener.jclassValue) ShakeAnimationListener%)

(define (ShakeAnimationListener.jnew_0)
  (define this (new ShakeAnimationListener% [jclass "ShakeAnimationListener"]))
  this)



