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
;; package org.allbinary.logic.math.vector

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/math/NoDecimalTrigTable.rkt" (NoDecimalTrigTable.jm_getInstance_0)])
(provide (all-defined-out))

(define AxisMathVectorUtil%
  (class JObject%
    (super-new)
    (field [f_noDecimalTrigTable JR.null])
    (define/public (jm_calculateX_2 _magnitude _angle)
    (let ()
      (let/ec jreturn
        (jreturn (JR.ldiv (JR.i64 (* _magnitude (send (get-field f_noDecimalTrigTable this) jm_cos_1 _angle))) 10)))))
    (define/public (jm_calculateY_2 _magnitude _angle)
    (let ()
      (let/ec jreturn
        (jreturn (JR.ldiv (JR.i64 (* _magnitude (send (get-field f_noDecimalTrigTable this) jm_sin_1 _angle))) 10)))))
    (define/public (jm_calculateZ_2 _magnitude _otherAngle)
    (let ()
      (let/ec jreturn
        (jreturn (JR.ldiv (JR.i64 (* _magnitude (send (get-field f_noDecimalTrigTable this) jm_sin_1 _otherAngle))) 10)))))))
(define (AxisMathVectorUtil.jclassValue) AxisMathVectorUtil%)

(define AxisMathVectorUtil.jcell_instance 'jnone)
(define (AxisMathVectorUtil.jstatic_instance)
  (when (eq? AxisMathVectorUtil.jcell_instance 'jnone) (set! AxisMathVectorUtil.jcell_instance (AxisMathVectorUtil.jnew_0)))
  AxisMathVectorUtil.jcell_instance)
(define (AxisMathVectorUtil.jsetstatic_instance value) (set! AxisMathVectorUtil.jcell_instance value))

(define (AxisMathVectorUtil.jnew_0)
  (define this (new AxisMathVectorUtil% [jclass "AxisMathVectorUtil"]))
    (set-field! f_noDecimalTrigTable this (NoDecimalTrigTable.jm_getInstance_0))
  this)

(define (AxisMathVectorUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (AxisMathVectorUtil.jstatic_instance)))))



