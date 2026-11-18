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
;; package org.allbinary.animation.vector

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/animation/AnimationInterfaceFactoryInterface.rkt")
(lazy-require ["./LineAnimation.rkt" (LineAnimation.jnew_1)])
(provide (all-defined-out))

(define LineAnimationFactory%
  (class JObject%
    (super-new)
    (field [f_basicColor JR.null])
    (define/public (jm_getInstance_1 _instanceId)
    (let ()
      (let/ec jreturn
        (jreturn (LineAnimation.jnew_1 (get-field f_basicColor this))))))
    (define/public (jm_setInitialScale_1 _scaleProperties)
    (let ()
      (let/ec jreturn (void))))))
(define (LineAnimationFactory.jclassValue) LineAnimationFactory%)

(define (LineAnimationFactory.jnew_1 _basicColor)
  (define this (new LineAnimationFactory% [jclass "LineAnimationFactory"]))
    
    (let ()
      (let/ec jreturn
        (set-field! f_basicColor this _basicColor)))
  this)



