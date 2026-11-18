#lang racket/base
;; 
;; AllBinary Open License Version 1 
;; Copyright (c) 2025 AllBinary 
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
;; package org.allbinary

(require racket/class racket/lazy-require
  "../../allbinary_java.rkt"
  "../../javax/microedition/lcdui/Form.rkt"
  "../../java/lang/System.rkt")
(lazy-require ["../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(provide (all-defined-out))

;J2ME
(define TsUtil%
  (class JObject%
    (super-new)
    (define/public (jm_hashCode_1 _anyType)
    (let ()
      (let/ec jreturn
        (jreturn (JR.className _anyType)))))
    (define/public (jm_waitFor_2 _any _timeoutMillis)
    (let ([_anyType JR.null])
      (let/ec jreturn
        (set! _anyType _any)
        (JR.className _anyType))))
    (define/public (jm_getRecord_2 _anyType _recordId)
    (let ([_recordStore JR.null][_data JR.null])
      (let/ec jreturn
        (set! _recordStore _anyType)
        (set! _data JR.null)
        (begin
            (set! _data (JR.newArray 0 (send _recordStore jm_getRecordSize_1 _recordId)))
            (send _recordStore jm_getRecord_3 _recordId _data 0))
        (jreturn (if (< (vector-length _data) 1) (get-field f_NULL_BYTE_ARRAY (NullUtil.jm_getInstance_0)) _data)))))
    (define/public (jm_compareTo_2 _a _b)
    (let ()
      (let/ec jreturn
        (jreturn (JR.compareTo _a _b)))))
    (define/public (jm_equalIgnoreCase_2 _a _b)
    (let ()
      (let/ec jreturn
        (jreturn (JR.equalsIgnoreCase _a _b)))))
    (define/public (jm_equalsNotstring_2 _anyType _object2)
    (let ()
      (let/ec jreturn
        (jreturn (eq? _anyType _object2)))))
    (define/public (jm_toNumberFromChar_1 _value)
    (let ()
      (let/ec jreturn
        (jreturn _value))))
    (define/public (jm_toNumber_1 _value)
    (let ()
      (let/ec jreturn
        (jreturn _value))))
    (define/public (jm_getByteArray_1 _string)
    (let ()
      (let/ec jreturn
        (jreturn (JR.getBytes _string)))))
    (define/public (jm_isItemListener_1 _owner)
    (let ()
      (let/ec jreturn
        (if (is-a? _owner Form%)
            (begin
            (jreturn #t))
            (begin
            (jreturn #f))))))
    (define/public (jm_printAvailableMethods_1 _anyType)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_gc_0)
    (let ()
      (let/ec jreturn
        (System.jm_gc_0))))))
(define (TsUtil.jclassValue) TsUtil%)

(define TsUtil.jcell_instance 'jnone)
(define (TsUtil.jstatic_instance)
  (when (eq? TsUtil.jcell_instance 'jnone) (set! TsUtil.jcell_instance (TsUtil.jnew_0)))
  TsUtil.jcell_instance)
(define (TsUtil.jsetstatic_instance value) (set! TsUtil.jcell_instance value))

(define (TsUtil.jnew_0)
  (define this (new TsUtil% [jclass "TsUtil"]))
  this)

(define (TsUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (TsUtil.jstatic_instance)))))



