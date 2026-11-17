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
(lazy-require ["../../../org/allbinary/logic/math/MathUtil.rkt" (MathUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define DistanceUtil%
  (class JObject%
    (super-new)
    (field [f_mathUtil JR.null])
    (define/public (jm_getDistance_4 _x1 _y1 _x2 _y2)
    (let ([_dx JR.null][_dy JR.null])
      (let/ec jreturn
        (set! _dx (JR.i32 (- _x1 _x2)))
        (set! _dy (JR.i32 (- _y1 _y2)))
        (jreturn (send (get-field f_mathUtil this) jm_sqrt_1 (JR.i32 (+ (JR.i32 (* _dx _dx)) (JR.i32 (* _dy _dy)))))))))))

(define DistanceUtil.jcell_instance 'jnone)
(define (DistanceUtil.jstatic_instance)
  (when (eq? DistanceUtil.jcell_instance 'jnone) (set! DistanceUtil.jcell_instance (DistanceUtil.jnew_0)))
  DistanceUtil.jcell_instance)

(define (DistanceUtil.jnew_0)
  (define this (new DistanceUtil% [jclass "DistanceUtil"]))
    (set-field! f_mathUtil this (MathUtil.jm_getInstance_0))
  this)

(define (DistanceUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (DistanceUtil.jstatic_instance)))))



