#lang racket/base
;; Generated Code Do Not Modify
;; package org.allbinary.animation

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "./RotationAnimation.rkt")
(lazy-require ["../../../org/allbinary/math/AngleFactory.rkt" (AngleFactory.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/math/AngleInfo.rkt" (AngleInfo.jm_getInstance_1)])
(lazy-require ["../../../org/allbinary/util/CircularIndexUtil.rkt" (CircularIndexUtil.jm_createInstance_1)])
(provide (all-defined-out))

(define NullRotationAnimation%
  (class RotationAnimation%
    (super-new)
    (define/override (jm_getAnimationSize_0)
    (let ()
      (let/ec jreturn
        (jreturn 0))))))
(define (NullRotationAnimation.jclassValue) NullRotationAnimation%)

(define (NullRotationAnimation.jnew_3 _angleInfo _circularIndexUtil _animationBehavior)
  (define this (new NullRotationAnimation% [jclass "NullRotationAnimation"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)

(define (NullRotationAnimation.jm_createTotalAngle_3 _angleInfo _totalAngle _animationBehavior)
    (let ()
      (let/ec jreturn
        (jreturn (NullRotationAnimation.jnew_3 _angleInfo (CircularIndexUtil.jm_createInstance_1 (JR.idiv _totalAngle (JR.className (send _angleInfo jm_getAngleIncrementInfo_0)))) _animationBehavior)))))

(define (NullRotationAnimation.jm_createQuarter_1 _animationBehavior)
    (let ()
      (let/ec jreturn
        (jreturn (NullRotationAnimation.jnew_3 (AngleInfo.jm_getInstance_1 (get-field f_QUARTER_TOTAL_ANGLE (AngleFactory.jm_getInstance_0))) (CircularIndexUtil.jm_createInstance_1 4) _animationBehavior)))))



