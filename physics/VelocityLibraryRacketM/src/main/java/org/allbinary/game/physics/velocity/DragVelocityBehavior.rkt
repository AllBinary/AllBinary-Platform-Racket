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
;; package org.allbinary.game.physics.velocity

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "./VelocityBehaviorBase.rkt")
(provide (all-defined-out))

(define DragVelocityBehavior%
  (class VelocityBehaviorBase%
    (super-new)
    (define/override (jm_reduce_3 _velocityProperties _nominator _denominator)
    (let ([_basicDecimal JR.null])
      (let/ec jreturn
        (when (not (= (JR.className (send _velocityProperties jm_getVelocityXBasicDecimalP_0)) 0))
            (begin
            (set! _basicDecimal (send _velocityProperties jm_getVelocityXBasicDecimalP_0))
            (send _basicDecimal jm_multiplyint_1 _nominator)
            (send _basicDecimal jm_divideint_1 _denominator)))
        (when (not (= (JR.className (send _velocityProperties jm_getVelocityYBasicDecimalP_0)) 0))
            (begin
            (set! _basicDecimal (send _velocityProperties jm_getVelocityYBasicDecimalP_0))
            (send _basicDecimal jm_multiplyint_1 _nominator)
            (send _basicDecimal jm_divideint_1 _denominator))))))
    (define/override (jm_reduceX_3 _velocityProperties _nominator _denominator)
    (let ([_basicDecimal JR.null])
      (let/ec jreturn
        (set! _basicDecimal (send _velocityProperties jm_getVelocityXBasicDecimalP_0))
        (when (not (= (send _basicDecimal jm_getUnscaled_0) 0))
            (begin
            (send _basicDecimal jm_multiplyint_1 _nominator)
            (send _basicDecimal jm_divideint_1 _denominator))))))
    (define/override (jm_reduceY_3 _velocityProperties _nominator _denominator)
    (let ([_basicDecimal JR.null])
      (let/ec jreturn
        (when (not (= (JR.className (send _velocityProperties jm_getVelocityYBasicDecimalP_0)) 0))
            (begin
            (set! _basicDecimal (send _velocityProperties jm_getVelocityYBasicDecimalP_0))
            (send _basicDecimal jm_multiplyint_1 _nominator)
            (send _basicDecimal jm_divideint_1 _denominator))))))))
(define (DragVelocityBehavior.jclassValue) DragVelocityBehavior%)

(define DragVelocityBehavior.jcell_instance 'jnone)
(define (DragVelocityBehavior.jstatic_instance)
  (when (eq? DragVelocityBehavior.jcell_instance 'jnone) (set! DragVelocityBehavior.jcell_instance (DragVelocityBehavior.jnew_0)))
  DragVelocityBehavior.jcell_instance)
(define (DragVelocityBehavior.jsetstatic_instance value) (set! DragVelocityBehavior.jcell_instance value))

(define (DragVelocityBehavior.jnew_0)
  (define this (new DragVelocityBehavior% [jclass "DragVelocityBehavior"]))
  this)



