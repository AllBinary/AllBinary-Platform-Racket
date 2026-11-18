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
  "./NullRotationAnimation.rkt")
(lazy-require ["../../../org/allbinary/math/AngleFactory.rkt" (AngleFactory.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/math/AngleInfo.rkt" (AngleInfo.jm_getInstance_1)])
(lazy-require ["../../../org/allbinary/util/CircularIndexUtil.rkt" (CircularIndexUtil.jm_createInstance_1)])
(lazy-require ["./IndexedAnimationBehavior.rkt" (IndexedAnimationBehavior.jnew_2)])
(provide (all-defined-out))

(define NullRotationAnimation2%
  (class NullRotationAnimation%
    (super-new)
    (define/override (jm_paintXY_3 _graphics _x _y)
    (let ()
      (let/ec jreturn (void))))))
(define (NullRotationAnimation2.jclassValue) NullRotationAnimation2%)

(define (NullRotationAnimation2.jnew_0)
  (define this (new NullRotationAnimation2% [jclass "NullRotationAnimation2"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)



