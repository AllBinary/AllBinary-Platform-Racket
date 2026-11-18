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
  "./VectorAnimationFactoryInterface.rkt")
(lazy-require ["./VectorAnimation.rkt" (VectorAnimation.jnew_3)])
(lazy-require ["./AnimationBehavior.rkt" (AnimationBehavior.jm_getInstance_0)])
(provide (all-defined-out))

(define VectorAnimationFactory%
  (class JObject%
    (super-new)
    (define/public (jm_getInstance_2 _points _basicColor)
    (let ()
      (let/ec jreturn
        (jreturn (VectorAnimation.jnew_3 _points _basicColor (AnimationBehavior.jm_getInstance_0))))))))
(define (VectorAnimationFactory.jclassValue) VectorAnimationFactory%)

(define (VectorAnimationFactory.jnew_0)
  (define this (new VectorAnimationFactory% [jclass "VectorAnimationFactory"]))
  this)



