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
;; package org.allbinary.logic.string

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../org/allbinary/TsUtil.rkt" (TsUtil.jm_getInstance_0)])
(lazy-require ["./StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define StringValidationUtil%
  (class JObject%
    (super-new)
    (field [f_stringUtil JR.null])
    (field [f_tsUtil JR.null])
    (define/public (jm_containsSpaces_1 _value)
    (let ()
      (let/ec jreturn
        (when (>= (JR.indexOf _value 32) 0)
            (begin
            (jreturn #t)))
        (jreturn #f))))
    (define/public (jm_isNumber_1 _value)
    (let ([_numberOfDecimalPoints JR.null][_digit JR.null][_index JR.null])
      (let/ec jreturn
        (set! _numberOfDecimalPoints 0)
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index (string-length _value))
                (let/ec jcontinue
            (set! _digit (JR.charAt _value _index))
            (when (and (not (send this jm_isNumberFromChar_1 _digit)) (not (= _digit (char->integer #\.))))
                (begin
                (jreturn #f)))
            (when (= _digit (char->integer #\.))
                (begin
                (set! _numberOfDecimalPoints (JR.i32 (+ _numberOfDecimalPoints 1)))
                (when (> _numberOfDecimalPoints 1)
                    (begin
                    (jreturn #f))))))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (jreturn #t))))
    (define/public (jm_isNumberFromChar_1 _digit)
    (let ()
      (let/ec jreturn
        (when (and (and (and (and (and (and (and (and (and (not (= _digit (char->integer #\0))) (not (= _digit (char->integer #\1)))) (not (= _digit (char->integer #\2)))) (not (= _digit (char->integer #\3)))) (not (= _digit (char->integer #\4)))) (not (= _digit (char->integer #\5)))) (not (= _digit (char->integer #\6)))) (not (= _digit (char->integer #\7)))) (not (= _digit (char->integer #\8)))) (not (= _digit (char->integer #\9))))
            (begin
            (jreturn #f)))
        (jreturn #t))))
    (define/public (jm_isValidRequired_3 _value _min _max)
    (let ()
      (let/ec jreturn
        (when (or (< (string-length _value) _min) (> (string-length _value) _max))
            (begin
            (jreturn #f)))
        (jreturn #t))))
    (define/public (jm_isValidRequiredNumber_3 _value _min _max)
    (let ()
      (let/ec jreturn
        (when (or (or (send this jm_isEmpty_1 _value) (< (string-length _value) _min)) (> (string-length _value) _max))
            (begin
            (jreturn #f)))
        (when (not (send this jm_isNumber_1 _value))
            (begin
            (jreturn #f)))
        (jreturn #t))))
    (define/public (jm_isValidNotRequired_3 _value _min _max)
    (let ()
      (let/ec jreturn
        (when (> (string-length _value) 0)
            (begin
            (when (or (< (string-length _value) _min) (> (string-length _value) _max))
                (begin
                (jreturn #f)))))
        (jreturn #t))))
    (define/public (jm_isValidNotRequiredNumber_3 _value _min _max)
    (let ()
      (let/ec jreturn
        (when (> (string-length _value) 0)
            (begin
            (when (or (or (= (send (get-field f_tsUtil this) jm_compareTo_2 _value (get-field f_NULL_STRING (get-field f_stringUtil this))) 0) (< (string-length _value) _min)) (> (string-length _value) _max))
                (begin
                (jreturn #f)))
            (when (not (send this jm_isNumber_1 _value))
                (begin
                (jreturn #f)))))
        (jreturn #t))))
    (define/public (jm_isEmpty_1 _string)
    (let ()
      (let/ec jreturn
        (if (and (not (= (send (get-field f_tsUtil this) jm_compareTo_2 _string (get-field f_NULL_STRING (get-field f_stringUtil this))) 0)) (not (= (send (get-field f_tsUtil this) jm_compareTo_2 _string (get-field f_EMPTY_STRING (get-field f_stringUtil this))) 0)))
            (begin
            (jreturn #f))
            (begin
            (jreturn #t))))))))

(define StringValidationUtil.jcell_instance 'jnone)
(define (StringValidationUtil.jstatic_instance)
  (when (eq? StringValidationUtil.jcell_instance 'jnone) (set! StringValidationUtil.jcell_instance (StringValidationUtil.jnew_0)))
  StringValidationUtil.jcell_instance)

(define (StringValidationUtil.jnew_0)
  (define this (new StringValidationUtil% [jclass "StringValidationUtil"]))
    (set-field! f_stringUtil this (StringUtil.jm_getInstance_0))
    (set-field! f_tsUtil this (TsUtil.jm_getInstance_0))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (StringValidationUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (StringValidationUtil.jstatic_instance)))))



