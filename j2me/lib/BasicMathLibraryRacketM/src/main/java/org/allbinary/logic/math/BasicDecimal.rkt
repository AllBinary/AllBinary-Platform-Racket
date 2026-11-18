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
;; package org.allbinary.logic.math

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../java/lang/Long.rkt")
(lazy-require ["./ScaleFactorFactory.rkt" (ScaleFactorFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define BasicDecimal%
  (class JObject%
    (super-new)
    (field [f_units 0])
    (field [f_scaled 0])
    (field [f_factor 0])
    (field [f_factorValue 0])
    (define/public (jm_setint_1 _value)
    (let ()
      (let/ec jreturn
        (set-field! f_units this _value)
        (send this jm_updateScaled_0))))
    (define/public (jm_setlong_1 _value)
    (let ()
      (let/ec jreturn
        (set-field! f_units this _value)
        (send this jm_updateScaled_0))))
    (define/public (jm_set_1 _bigDecimal)
    (let ()
      (let/ec jreturn
        (set-field! f_units this (send _bigDecimal jm_getUnscaled_0))
        (send this jm_updateScaled_0))))
    (define/public (jm_addint_1 _value)
    (let ()
      (let/ec jreturn
        (set-field! f_units this (JR.i64 (+ (get-field f_units this) _value)))
        (send this jm_updateScaled_0))))
    (define/public (jm_addlong_1 _value)
    (let ()
      (let/ec jreturn
        (set-field! f_units this (JR.i64 (+ (get-field f_units this) _value)))
        (send this jm_updateScaled_0))))
    (define/public (jm_add_1 _bigDecimal)
    (let ()
      (let/ec jreturn
        (set-field! f_units this (JR.i64 (+ (get-field f_units this) (send _bigDecimal jm_getUnscaled_0))))
        (send this jm_updateScaled_0))))
    (define/public (jm_subtractint_1 _value)
    (let ()
      (let/ec jreturn
        (set-field! f_units this (JR.i64 (- (get-field f_units this) _value)))
        (send this jm_updateScaled_0))))
    (define/public (jm_subtractlong_1 _value)
    (let ()
      (let/ec jreturn
        (set-field! f_units this (JR.i64 (- (get-field f_units this) _value)))
        (send this jm_updateScaled_0))))
    (define/public (jm_subtract_1 _bigDecimal)
    (let ()
      (let/ec jreturn
        (set-field! f_units this (JR.i64 (- (get-field f_units this) (send _bigDecimal jm_getUnscaled_0))))
        (send this jm_updateScaled_0))))
    (define/public (jm_multiplyint_1 _value)
    (let ()
      (let/ec jreturn
        (set-field! f_units this (JR.i64 (* (get-field f_units this) _value)))
        (send this jm_updateScaled_0))))
    (define/public (jm_multiplylong_1 _value)
    (let ()
      (let/ec jreturn
        (set-field! f_units this (JR.i64 (* (get-field f_units this) _value)))
        (send this jm_updateScaled_0))))
    (define/public (jm_multiply_1 _bigDecimal)
    (let ()
      (let/ec jreturn
        (set-field! f_units this (JR.i64 (* (get-field f_units this) (send _bigDecimal jm_getUnscaled_0))))
        (send this jm_updateScaled_0))))
    (define/public (jm_divideint_1 _value)
    (let ()
      (let/ec jreturn
        (set-field! f_units this (JR.ldiv (get-field f_units this) _value))
        (send this jm_updateScaled_0))))
    (define/public (jm_dividelong_1 _value)
    (let ()
      (let/ec jreturn
        (set-field! f_units this (JR.ldiv (get-field f_units this) _value))
        (send this jm_updateScaled_0))))
    (define/public (jm_divide_1 _bigDecimal)
    (let ()
      (let/ec jreturn
        (set-field! f_units this (JR.ldiv (get-field f_units this) (send _bigDecimal jm_getUnscaled_0)))
        (send this jm_updateScaled_0))))
    (define/public (jm_getUnscaled_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_units this)))))
    (define/public (jm_updateScaled_0)
    (let ()
      (let/ec jreturn
        (set-field! f_scaled this (JR.i32 (JR.ldiv (get-field f_units this) (get-field f_factorValue this)))))))
    (define/public (jm_getScaled_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_scaled this)))))
    (define/override (jm_toString_0)
    (let ()
      (let/ec jreturn
        (jreturn (JR.str (get-field f_units this))))))
    (define/public (jm_getScaledFactor_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_factor this)))))
    (define/public (jm_getScaledFactorValue_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_factorValue this)))))))
(define (BasicDecimal.jclassValue) BasicDecimal%)

(define BasicDecimal.jcell_ZERO_BIGDECIMAL 'jnone)
(define (BasicDecimal.jstatic_ZERO_BIGDECIMAL)
  (when (eq? BasicDecimal.jcell_ZERO_BIGDECIMAL 'jnone) (set! BasicDecimal.jcell_ZERO_BIGDECIMAL (BasicDecimal.jnew_1 0)))
  BasicDecimal.jcell_ZERO_BIGDECIMAL)
(define (BasicDecimal.jsetstatic_ZERO_BIGDECIMAL value) (set! BasicDecimal.jcell_ZERO_BIGDECIMAL value))

(define (BasicDecimal.jnew_1 _units)
  (define this (new BasicDecimal% [jclass "BasicDecimal"]))
    
    
    (set-field! f_factor this (get-field f_DEFAULT_SCALE_FACTOR (ScaleFactorFactory.jm_getInstance_0)))
    (set-field! f_factorValue this (get-field f_DEFAULT_SCALE_VALUE (ScaleFactorFactory.jm_getInstance_0)))
    (let ()
      (let/ec jreturn
        (set-field! f_units this _units)
        (send this jm_updateScaled_0)))
  this)

(define (BasicDecimal.jm_createBigDecimal_1 _bigDecimal)
    (let ()
      (let/ec jreturn
        (jreturn (BasicDecimal.jnew_1 (send _bigDecimal jm_getUnscaled_0))))))



