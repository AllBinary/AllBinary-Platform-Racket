#lang racket/base
;; Generated Code Do Not Modify
;; package org.allbinary.logic.math

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define MathUtil%
  (class JObject%
    (super-new)
    (field [f_ACCURACY 0])
    (define/public (jm_getTotalDigits_1 _digits)
    (let ([_total JR.null])
      (let/ec jreturn
        (set! _total 0)
        (let/ec jbreak (let jloop () (when (> _digits 0)
                (let/ec jcontinue
            (set! _digits (JR.idiv _digits 10))
            (set! _total (JR.i32 (+ _total 1)))) (jloop))))
        (jreturn _total))))
    (define/public (jm_sqrt_1 _value)
    (let ([_accumulated JR.null][_result JR.null])
      (let/ec jreturn
        (when (<= _value 1)
            (begin
            (jreturn _value)))
        (set! _accumulated (arithmetic-shift _value (- (bitwise-and 1 31))))
        (set! _result (arithmetic-shift (JR.i32 (+ _accumulated (JR.idiv _value _accumulated))) (- (bitwise-and 1 31))))
        (let/ec jbreak (let jloop ()
                (let/ec jcontinue
            (set! _accumulated _result)
            (set! _result (arithmetic-shift (JR.i32 (+ _accumulated (JR.idiv _value _accumulated))) (- (bitwise-and 1 31)))))
                (when (> _accumulated _result) (jloop))))
        (jreturn _accumulated))))
    (define/public (jm_sqrtd_1 _x)
    (let ([_result JR.null][_index JR.null])
      (let/ec jreturn
        (when (= _x 0)
            (begin
            (jreturn 0.0)))
        (when (< _x 0)
            (begin
            (jreturn (- 1.0))))
        (set! _result (JR.toDouble _x))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index (get-field f_ACCURACY this))
                (let/ec jcontinue
            (set! _result (/ (+ _result (/ (JR.toDouble _x) _result)) 2.0)))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (jreturn _result))))
    (define/public (jm_abs_1 _value)
    (let ()
      (let/ec jreturn
        (jreturn (if (< _value 0) (JR.i32 (- _value)) _value)))))
    (define/public (jm_abslong_1 _value)
    (let ()
      (let/ec jreturn
        (jreturn (if (< _value 0) (JR.i64 (- _value)) _value)))))
    (define/public (jm_min_2 _value _value2)
    (let ()
      (let/ec jreturn
        (jreturn (if (<= _value _value2) _value _value2)))))
    (define/public (jm_max_2 _value _value2)
    (let ()
      (let/ec jreturn
        (jreturn (if (>= _value _value2) _value _value2)))))))

(define MathUtil.jcell_instance 'jnone)
(define (MathUtil.jstatic_instance)
  (when (eq? MathUtil.jcell_instance 'jnone) (set! MathUtil.jcell_instance (MathUtil.jnew_0)))
  MathUtil.jcell_instance)

(define (MathUtil.jnew_0)
  (define this (new MathUtil% [jclass "MathUtil"]))
    (set-field! f_ACCURACY this 100)
  this)

(define (MathUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (MathUtil.jstatic_instance)))))



