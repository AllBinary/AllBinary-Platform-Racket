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
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["./PrimitiveLongSingleton.rkt" (PrimitiveLongSingleton.jm_getInstance_0)])
(lazy-require ["./MathUtil.rkt" (MathUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define PrimitiveLongUtil%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_powerOfTen 0])
    (field [f_maxValue 0])
    (field [f_maxDigits 0])
    (field [f_charArray JR.null])
    (field [f_currentTotalDigits 0])
    (field [f_primitiveLongSingleton JR.null])
    (define/public (jm_getCharArray_1 _value)
    (let ([_index JR.null][_div JR.null][_lastValue JR.null][_digit JR.null])
      (let/ec jreturn
        (when (< _value 10)
            (begin
            (send this jm_setCurrentTotalDigits_1 1)
            (jreturn (vector-ref (get-field f_NUMBER_CHAR_ARRAYS (get-field f_primitiveLongSingleton this)) _value))))
        (when (> _value (get-field f_maxValue this))
            (begin
            (send this jm_setCurrentTotalDigits_1 3)
            (jreturn (get-field f_UNK (get-field f_primitiveLongSingleton this)))))
        (set! _index 0)
        (set! _div (get-field f_powerOfTen this))
        (set! _lastValue 0)
        (let/ec jbreak (let jloop () (when (>= _div 1)
                (let/ec jcontinue
            (set! _digit (JR.idiv (JR.i32 (- _value _lastValue)) _div))
            (when (and (>= _digit 0) (< _digit 10))
                (begin
                (if (and (= _digit 0) (= _index 0))
                    (begin
                    (void))
                    (begin
                    (vector-set! (get-field f_charArray this) (let ([jvalue _index]) (set! _index (JR.i32 (+ _index 1))) jvalue) (vector-ref (get-field f_NUMBER_CHAR_ARRAY (get-field f_primitiveLongSingleton this)) _digit))))
                (set! _lastValue (JR.i32 (+ _lastValue (JR.i32 (* _digit _div)))))))
            (set! _div (JR.idiv _div 10))) (jloop))))
        (send this jm_setCurrentTotalDigits_1 _index)
        (jreturn (get-field f_charArray this)))))
    (define/public (jm_setCurrentTotalDigits_1 _currentTotalDigits)
    (let ()
      (let/ec jreturn
        (set-field! f_currentTotalDigits this _currentTotalDigits))))
    (define/public (jm_getCurrentTotalDigits_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_currentTotalDigits this)))))
    (define/public (jm_getMaxDigits_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_maxDigits this)))))))
(define (PrimitiveLongUtil.jclassValue) PrimitiveLongUtil%)

(define (PrimitiveLongUtil.jnew_2 _powerOfTen _unused)
  (define this (new PrimitiveLongUtil% [jclass "PrimitiveLongUtil"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    
    
    
    
    
    (set-field! f_primitiveLongSingleton this (PrimitiveLongSingleton.jm_getInstance_0))
    (let ()
      (let/ec jreturn
        (set-field! f_maxDigits this (send (MathUtil.jm_getInstance_0) jm_getTotalDigits_1 _powerOfTen))
        (set-field! f_powerOfTen this _powerOfTen)
        (set-field! f_maxValue this (JR.i32 (- (JR.i32 (* _powerOfTen 10)) 1)))
        (set-field! f_charArray this (JR.newArray 0 (get-field f_maxDigits this)))))
  this)

(define (PrimitiveLongUtil.jm_createPowerOfTen_1 _powerOfTen)
    (let ([_primitiveLongUtil JR.null][_logUtil JR.null][_commonStrings JR.null])
      (let/ec jreturn
        (set! _primitiveLongUtil (PrimitiveLongUtil.jnew_2 _powerOfTen (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0))))
        (when (not (= (remainder _powerOfTen 10) 0))
            (begin
            (set! _logUtil (LogUtil.jm_getInstance_0))
            (set! _commonStrings (CommonStrings.jm_getInstance_0))
            (send _logUtil jm_put_4 (get-field f_EXCEPTION _commonStrings) _primitiveLongUtil (get-field f_CONSTRUCTOR _commonStrings) (JR.newException "Exception" "Max must be power of 10"))))
        (jreturn _primitiveLongUtil))))



