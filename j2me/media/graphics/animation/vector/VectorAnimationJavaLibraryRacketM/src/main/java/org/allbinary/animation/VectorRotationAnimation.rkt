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
  "./VectorBaseRotationAnimation.rkt")
(lazy-require ["../../../org/allbinary/math/AngleFactory.rkt" (AngleFactory.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/math/AngleInfo.rkt" (AngleInfo.jm_getInstance_1)])
(provide (all-defined-out))

(define VectorRotationAnimation%
  (class VectorBaseRotationAnimation%
    (super-new)
    (define/override (jm_setFrameByDirection_1 _direction)
    (let ([_angle JR.null])
      (let/ec jreturn
        (set! _angle (JR.className (get-field f_directionUtil this)))
        (send this jm_adjustFrameToAngle_1 _angle))))
    (define/override (jm_setFrameToAngle_1 _angle)
    (let ()
      (let/ec jreturn
        (send this jm_adjustFrameToAngle_1 _angle))))
    (define/override (jm_setFrame_1 _index)
    (let ()
      (let/ec jreturn
        (super jm_setFrame_1 _index)
        (JR.className (get-field f_angleInfo this)))))
    (define/override (jm_adjustFrame_1 _newAngle)
    (let ()
      (let/ec jreturn
        (send this jm_setFrame_1 (JR.className (get-field f_frameUtil this))))))
    (define/override (jm_adjustFrameToAngle_1 _newAngle)
    (let ()
      (let/ec jreturn
        (send this jm_adjustFrame_1 (send _newAngle jm_getValue_0)))))))
(define (VectorRotationAnimation.jclassValue) VectorRotationAnimation%)

(define (VectorRotationAnimation.jnew_3 _currentPoints _basicColor _animationBehavior)
  (define this (new VectorRotationAnimation% [jclass "VectorRotationAnimation"]))
    (let ()
      (let/ec jreturn
        (void)
        (JR.className (get-field f_angleInfo this))))
  this)



