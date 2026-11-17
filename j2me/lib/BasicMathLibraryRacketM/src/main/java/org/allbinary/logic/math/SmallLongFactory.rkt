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
(provide (all-defined-out))

(define SmallLongFactory%
  (class JObject%
    (super-new)
    (field [f_NEGATIVE_MAX 0])
    (field [f_POSITIVE_MAX 0])
    (field [f_INTEGER_ARRAY JR.null])
    (field [f_STRING_ARRAY JR.null])
    (field [f_MIN 0])
    (field [f_lastMin 0])
    (field [f_lastNegativeMin 0])
    (define/public (jm_initWithRange_2 _value _negativeValue)
    (let ([_index JR.null])
      (let/ec jreturn
        (begin
            (set! _index (JR.i32 (- _value 1)))
            (let/ec jbreak (let jloop () (when (>= _index (get-field f_lastMin this))
                (let/ec jcontinue
            (vector-set! (get-field f_INTEGER_ARRAY this) (JR.i32 (+ _index (get-field f_NEGATIVE_MAX this))) _index))
                (set! _index (JR.i32 (- _index 1))) (jloop)))))
        (begin
            (set! _index (JR.i32 (- _negativeValue 1)))
            (let/ec jbreak (let jloop () (when (>= _index (get-field f_lastNegativeMin this))
                (let/ec jcontinue
            (vector-set! (get-field f_INTEGER_ARRAY this) _index (JR.i32 (- _index))))
                (set! _index (JR.i32 (- _index 1))) (jloop)))))
        (when (< (get-field f_lastMin this) _value)
            (begin
            (set-field! f_lastMin this _value)
            (set-field! f_MIN this _value)))
        (when (< (get-field f_lastNegativeMin this) _negativeValue)
            (begin
            (set-field! f_lastNegativeMin this _negativeValue))))))
    (define/public (jm_init_0)
    (let ([_index JR.null])
      (let/ec jreturn
        (when (JR.null? (vector-ref (get-field f_INTEGER_ARRAY this) 0))
            (begin
            (when (or (< (get-field f_lastMin this) (get-field f_POSITIVE_MAX this)) (< (get-field f_lastNegativeMin this) (get-field f_NEGATIVE_MAX this)))
                (begin
                (begin
                    (set! _index (JR.i32 (- (get-field f_POSITIVE_MAX this) 1)))
                    (let/ec jbreak (let jloop () (when (>= _index (get-field f_lastMin this))
                        (let/ec jcontinue
                    (vector-set! (get-field f_INTEGER_ARRAY this) (JR.i32 (+ _index (get-field f_NEGATIVE_MAX this))) _index))
                        (set! _index (JR.i32 (- _index 1))) (jloop)))))
                (begin
                    (set! _index (JR.i32 (- (get-field f_NEGATIVE_MAX this) 1)))
                    (let/ec jbreak (let jloop () (when (>= _index (get-field f_lastNegativeMin this))
                        (let/ec jcontinue
                    (vector-set! (get-field f_INTEGER_ARRAY this) _index (JR.i32 (- _index))))
                        (set! _index (JR.i32 (- _index 1))) (jloop)))))
                (set-field! f_lastMin this (get-field f_POSITIVE_MAX this))
                (set-field! f_lastNegativeMin this (get-field f_NEGATIVE_MAX this)))))))))
    (define/public (jm_getInstanceNoThrow_1 _index)
    (let ()
      (let/ec jreturn
        (when (> (JR.i64 (+ _index (get-field f_NEGATIVE_MAX this))) (JR.i32 (- (vector-length (get-field f_INTEGER_ARRAY this)) 1)))
            (begin
            (jreturn (vector-ref (get-field f_INTEGER_ARRAY this) (JR.i32 (+ (JR.i32 (- 1)) (get-field f_NEGATIVE_MAX this)))))))
        (jreturn (vector-ref (get-field f_INTEGER_ARRAY this) (JR.i32 (+ (JR.i32 _index) (get-field f_NEGATIVE_MAX this))))))))
    (define/public (jm_getString_1 _index)
    (let ([_i JR.null])
      (let/ec jreturn
        (set! _i (JR.i32 (+ _index (get-field f_NEGATIVE_MAX this))))
        (when (JR.null? (vector-ref (get-field f_STRING_ARRAY this) _i))
            (begin
            (vector-set! (get-field f_STRING_ARRAY this) _i (JR.toString (vector-ref (get-field f_INTEGER_ARRAY this) _i)))))
        (jreturn (vector-ref (get-field f_STRING_ARRAY this) _i)))))))

(define SmallLongFactory.jcell_instance 'jnone)
(define (SmallLongFactory.jstatic_instance)
  (when (eq? SmallLongFactory.jcell_instance 'jnone) (set! SmallLongFactory.jcell_instance (SmallLongFactory.jnew_0)))
  SmallLongFactory.jcell_instance)

(define (SmallLongFactory.jnew_0)
  (define this (new SmallLongFactory% [jclass "SmallLongFactory"]))
    (set-field! f_NEGATIVE_MAX this 500)
    (set-field! f_POSITIVE_MAX this #x2D1)
    (set-field! f_INTEGER_ARRAY this (JR.newArray JR.null (JR.i32 (+ (get-field f_NEGATIVE_MAX this) (get-field f_POSITIVE_MAX this)))))
    (set-field! f_STRING_ARRAY this (JR.newArray JR.null (JR.i32 (+ (get-field f_NEGATIVE_MAX this) (get-field f_POSITIVE_MAX this)))))
    (set-field! f_MIN this 0)
    (set-field! f_lastMin this 0)
    (set-field! f_lastNegativeMin this 0)
    (let ()
      (let/ec jreturn (void)))
  this)

(define (SmallLongFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (SmallLongFactory.jstatic_instance)))))



