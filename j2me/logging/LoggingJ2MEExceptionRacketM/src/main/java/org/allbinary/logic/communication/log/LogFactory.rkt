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
;; package org.allbinary.logic.communication.log

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["./Log.rkt" (Log.jnew_4)])
(provide (all-defined-out))

;ActualPlatform
(define LogFactory%
  (class JObject%
    (super-new)))
(define (LogFactory.jclassValue) LogFactory%)

(define LogFactory.jcell_LOG 'jnone)
(define (LogFactory.jstatic_LOG)
  (when (eq? LogFactory.jcell_LOG 'jnone) (set! LogFactory.jcell_LOG (Log.jnew_4 (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0)) (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0)))))
  LogFactory.jcell_LOG)
(define (LogFactory.jsetstatic_LOG value) (set! LogFactory.jcell_LOG value))

(define (LogFactory.jnew_0)
  (define this (new LogFactory% [jclass "LogFactory"]))
  this)

(define (LogFactory.jm_getInstanceD_0)
    (let ([_stringUtil JR.null][_nullUtil JR.null])
      (let/ec jreturn
        (set! _stringUtil (StringUtil.jm_getInstance_0))
        (set! _nullUtil (NullUtil.jm_getInstance_0))
        (jreturn (Log.jnew_4 (get-field f_EMPTY_STRING _stringUtil) (get-field f_NULL_OBJECT _nullUtil) (get-field f_EMPTY_STRING _stringUtil) (get-field f_NULL_OBJECT _nullUtil))))))

(define (LogFactory.jm_getInstance_4 _specialMessage _anyType _functionName _exception)
    (let ()
      (let/ec jreturn
        (jreturn (Log.jnew_4 _specialMessage _anyType _functionName _exception)))))

(define (LogFactory.jm_getInstanceF_3 _specialMessage _anyType _functionName)
    (let ()
      (let/ec jreturn
        (jreturn (LogFactory.jstatic_LOG)))))



