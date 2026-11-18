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
;; package org.allbinary.math

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(lazy-require ["./AngleIncrementInfo.rkt" (AngleIncrementInfo.jnew_1)])
(lazy-require ["./AngleFactory.rkt" (AngleFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define AngleIncrementInfoFactory%
  (class JObject%
    (super-new)
    (field [f_angleIncrementInfo JR.null])
    (define/public (jm_getAt_1 _angleIncrement)
    (let ([_halfAngleIncrement JR.null][_angleIncrementInfo JR.null][_angleIncrementInfoCanBeNull JR.null])
      (let/ec jreturn
        (set! _halfAngleIncrement (arithmetic-shift _angleIncrement (- (bitwise-and 1 31))))
        (set! _angleIncrementInfo JR.null)
        (set! _angleIncrementInfoCanBeNull (vector-ref (get-field f_angleIncrementInfo this) _halfAngleIncrement))
        (if (JR.null? _angleIncrementInfoCanBeNull)
            (begin
            (set! _angleIncrementInfo (AngleIncrementInfo.jnew_1 _angleIncrement))
            (vector-set! (get-field f_angleIncrementInfo this) _halfAngleIncrement _angleIncrementInfo)
            (jreturn _angleIncrementInfo))
            (begin
            (set! _angleIncrementInfo _angleIncrementInfoCanBeNull)))
        (jreturn _angleIncrementInfo))))))
(define (AngleIncrementInfoFactory.jclassValue) AngleIncrementInfoFactory%)

(define AngleIncrementInfoFactory.jcell_instance 'jnone)
(define (AngleIncrementInfoFactory.jstatic_instance)
  (when (eq? AngleIncrementInfoFactory.jcell_instance 'jnone) (set! AngleIncrementInfoFactory.jcell_instance (AngleIncrementInfoFactory.jnew_0)))
  AngleIncrementInfoFactory.jcell_instance)
(define (AngleIncrementInfoFactory.jsetstatic_instance value) (set! AngleIncrementInfoFactory.jcell_instance value))

(define (AngleIncrementInfoFactory.jnew_0)
  (define this (new AngleIncrementInfoFactory% [jclass "AngleIncrementInfoFactory"]))
    (set-field! f_angleIncrementInfo this (JR.newArray JR.null (get-field f_TOTAL_ANGLE (AngleFactory.jm_getInstance_0))))
  this)

(define (AngleIncrementInfoFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (AngleIncrementInfoFactory.jstatic_instance)))))



