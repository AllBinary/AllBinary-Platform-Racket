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
  "../../../../java/lang/Integer.rkt")
(lazy-require ["../../../../org/allbinary/AndroidUtil.rkt" (AndroidUtil.jm_isAndroid_0)])
(lazy-require ["../../../../org/allbinary/J2MEUtil.rkt" (J2MEUtil.jm_isJ2ME_0)])
(lazy-require ["../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(provide (all-defined-out))

(define SmallIntegerSingletonFactory%
  (class JObject%
    (super-new)
    (field [f_NEGATIVE_MAX 0])
    (field [f_POSITIVE_MAX 0])
    (field [f_INTEGER_ARRAY JR.null])
    (field [f_STRING_ARRAY JR.null])
    (field [f_MIN 0])
    (field [f_lastMin 0])
    (field [f_lastNegativeMin 0])
    (define/public (jm_getMin_0)
    (let ([_minAllowed JR.null][_logUtil JR.null])
      (let/ec jreturn
        (set! _minAllowed (send this jm_getMinAllowed_0))
        (when (<= (get-field f_MIN this) _minAllowed)
            (begin
            (if (J2MEUtil.jm_isJ2ME_0)
                (begin
                (void))
                (if (AndroidUtil.jm_isAndroid_0)
                (begin
                (set! _logUtil (LogUtil.jm_getInstance_0))
                (send _logUtil jm_putF_3 (send (send (send (StringMaker.jnew_0) jm_append_1 "Android InputFactory was initialized before GameMidlet: ") jm_appendint_1 (get-field f_MIN this)) jm_toString_0) this "getMin")
                (send this jm_initWithRange_2 #x291 6))
                (begin
                (set! _logUtil (LogUtil.jm_getInstance_0))
                (send _logUtil jm_putF_3 (send (send (send (StringMaker.jnew_0) jm_append_1 "InputFactory was initialized before GameMidlet or KeyFactoryInitializer - Currently this is occurs on JS build by TouchMotionGestureFactory constructor: ") jm_appendint_1 (get-field f_MIN this)) jm_toString_0) this "getMin")
                (send this jm_initWithRange_2 #x2D0 6))))))
        (when (<= (get-field f_MIN this) _minAllowed)
            (begin
            (set! _logUtil (LogUtil.jm_getInstance_0))
            (send _logUtil jm_put_4 "This means you loaded the InputFactory before determining the platform input size requirements." this "getMin" (JR.newException "Exception"))))
        (jreturn (get-field f_MIN this)))))
    (define/public (jm_getMinAllowed_0)
    (let ()
      (let/ec jreturn
        (if (J2MEUtil.jm_isJ2ME_0)
            (begin
            (jreturn 0))
            (begin
            (if (AndroidUtil.jm_isAndroid_0)
                (begin
                (jreturn #x101))
                (begin
                (jreturn 23))))))))
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
            (set-field! f_MIN this (get-field f_lastMin this))
            (set-field! f_lastNegativeMin this (get-field f_NEGATIVE_MAX this)))))))
    (define/public (jm_getAt_1 _index)
    (let ()
      (let/ec jreturn
        (jreturn (vector-ref (get-field f_INTEGER_ARRAY this) (JR.i32 (+ _index (get-field f_NEGATIVE_MAX this))))))))
    (define/public (jm_getAtNoThrow_1 _index)
    (let ()
      (let/ec jreturn
        (when (> (JR.i32 (+ _index (get-field f_NEGATIVE_MAX this))) (JR.i32 (- (vector-length (get-field f_INTEGER_ARRAY this)) 1)))
            (begin
            (jreturn (vector-ref (get-field f_INTEGER_ARRAY this) (JR.i32 (+ (JR.i32 (- 1)) (get-field f_NEGATIVE_MAX this)))))))
        (jreturn (vector-ref (get-field f_INTEGER_ARRAY this) (JR.i32 (+ _index (get-field f_NEGATIVE_MAX this))))))))
    (define/public (jm_createInstance_1 _index)
    (let ([_integer JR.null])
      (let/ec jreturn
        (set! _integer (send this jm_getAt_1 _index))
        (when (JR.null? _integer)
            (begin
            (set! _integer _index)))
        (jreturn _integer))))
    (define/public (jm_getString_1 _index)
    (let ([_i JR.null])
      (let/ec jreturn
        (set! _i (JR.i32 (+ _index (get-field f_NEGATIVE_MAX this))))
        (when (JR.null? (vector-ref (get-field f_STRING_ARRAY this) _i))
            (begin
            (vector-set! (get-field f_STRING_ARRAY this) _i (JR.toString (vector-ref (get-field f_INTEGER_ARRAY this) _i)))))
        (jreturn (vector-ref (get-field f_STRING_ARRAY this) _i)))))))
(define (SmallIntegerSingletonFactory.jclassValue) SmallIntegerSingletonFactory%)

(define SmallIntegerSingletonFactory.jcell_instance 'jnone)
(define (SmallIntegerSingletonFactory.jstatic_instance)
  (when (eq? SmallIntegerSingletonFactory.jcell_instance 'jnone) (set! SmallIntegerSingletonFactory.jcell_instance (SmallIntegerSingletonFactory.jnew_0)))
  SmallIntegerSingletonFactory.jcell_instance)
(define (SmallIntegerSingletonFactory.jsetstatic_instance value) (set! SmallIntegerSingletonFactory.jcell_instance value))

(define (SmallIntegerSingletonFactory.jnew_0)
  (define this (new SmallIntegerSingletonFactory% [jclass "SmallIntegerSingletonFactory"]))
    (set-field! f_NEGATIVE_MAX this 500)
    (set-field! f_POSITIVE_MAX this #x2D1)
    (set-field! f_INTEGER_ARRAY this (JR.newArray JR.null (JR.i32 (+ (get-field f_NEGATIVE_MAX this) (get-field f_POSITIVE_MAX this)))))
    (set-field! f_STRING_ARRAY this (JR.newArray JR.null (JR.i32 (+ (get-field f_NEGATIVE_MAX this) (get-field f_POSITIVE_MAX this)))))
    (set-field! f_MIN this 0)
    (set-field! f_lastMin this 0)
    (set-field! f_lastNegativeMin this 0)
    (let ()
      (let/ec jreturn
        (send this jm_initWithRange_2 23 0)))
  this)

(define (SmallIntegerSingletonFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (SmallIntegerSingletonFactory.jstatic_instance)))))



