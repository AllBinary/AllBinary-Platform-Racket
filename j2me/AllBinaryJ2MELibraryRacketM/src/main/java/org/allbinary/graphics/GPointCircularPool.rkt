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
;; package org.allbinary.graphics

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "../../../org/allbinary/logic/util/cache/BaseCircularPool.rkt")
(lazy-require ["../../../org/allbinary/util/CircularIndexUtil.rkt" (CircularIndexUtil.jm_createInstance_1)])
(lazy-require ["./CustomGPoint.rkt" (CustomGPoint.jm_getInstance3_2)])
(provide (all-defined-out))

(define GPointCircularPool%
  (class BaseCircularPool%
    (super-new)))
(define (GPointCircularPool.jclassValue) GPointCircularPool%)

(define (GPointCircularPool.jnew_1 _size)
  (define this (new GPointCircularPool% [jclass "GPointCircularPool"]))
    (let ([_index JR.null])
      (let/ec jreturn
        (set-field! f_circularIndexUtil this (CircularIndexUtil.jm_createInstance_1 _size))
        (set-field! f_OBJECT_ARRAY this (JR.newArray JR.null _size))
        (begin
            (set! _index (JR.i32 (- _size 1)))
            (let/ec jbreak (let jloop () (when (>= _index 0)
                (let/ec jcontinue
            (vector-set! (get-field f_OBJECT_ARRAY this) _index (CustomGPoint.jm_getInstance3_2 0 0)))
                (set! _index (JR.i32 (- _index 1))) (jloop)))))))
  this)



