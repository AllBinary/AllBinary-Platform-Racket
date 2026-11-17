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
  "../../java/lang/Float.rkt"
  "../../java/lang/Double.rkt")
(provide (all-defined-out))

;TempBase
(define TsUtil%
  (class JObject%
    (super-new)
    (define/public (jm_longBitsToDouble_1 _bits)
    (let ()
      (let/ec jreturn
        (jreturn (Double.jm_longBitsToDouble_1 _bits)))))
    (define/public (jm_intBitsToFloat_1 _bits)
    (let ()
      (let/ec jreturn
        (jreturn (Float.jm_intBitsToFloat_1 _bits)))))
    (define/public (jm_hashCode_1 _anyType)
    (let ()
      (let/ec jreturn
        (jreturn (JR.className _anyType)))))
    (define/public (jm_waitFor_2 _any _timeoutMillis)
    (let ([_anyType JR.null])
      (let/ec jreturn
        (set! _anyType _any)
        (JR.className _anyType))))
    (define/public (jm_compareTo_2 _a _b)
    (let ()
      (let/ec jreturn
        (jreturn (JR.compareTo _a _b)))))))

(define TsUtil.jcell_instance 'jnone)
(define (TsUtil.jstatic_instance)
  (when (eq? TsUtil.jcell_instance 'jnone) (set! TsUtil.jcell_instance (TsUtil.jnew_0)))
  TsUtil.jcell_instance)

(define (TsUtil.jnew_0)
  (define this (new TsUtil% [jclass "TsUtil"]))
  this)

(define (TsUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (TsUtil.jstatic_instance)))))



