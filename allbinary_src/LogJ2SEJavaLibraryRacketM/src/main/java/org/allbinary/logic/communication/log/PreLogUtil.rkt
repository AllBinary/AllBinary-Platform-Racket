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
  "../../../../../allbinary_java.rkt"
  "../../../../../java/lang/System.rkt")
(lazy-require ["../../../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["./LogFormatUtil.rkt" (LogFormatUtil.jm_getInstance_0)])
(provide (all-defined-out))

;ActualPlatform
(define PreLogUtil%
  (class JObject%
    (super-new)))

(define PreLogUtil.jcell_LOG_SUCCESS 'jnone)
(define (PreLogUtil.jstatic_LOG_SUCCESS)
  (when (eq? PreLogUtil.jcell_LOG_SUCCESS 'jnone) (set! PreLogUtil.jcell_LOG_SUCCESS "org.allbinary: "))
  PreLogUtil.jcell_LOG_SUCCESS)

(define (PreLogUtil.jnew_0)
  (define this (new PreLogUtil% [jclass "PreLogUtil"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (PreLogUtil.jm_put_3 _specialMessage _anyType _functionName)
    (let ()
      (let/ec jreturn
        (PreLogUtil.jm_putOE_4 _specialMessage _anyType _functionName (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0))))))

(define (PreLogUtil.jm_putOE_4 _specialMessage _anyType _functionName _exception)
    (let ([_className JR.null][_message JR.null])
      (let/ec jreturn
        (set! _className (get-field f_EMPTY (CommonStrings.jm_getInstance_0)))
        (when (not (JR.null? (JR.className _anyType)))
            (begin
            (set! _className (JR.className _anyType))))
        (set! _message (send (LogFormatUtil.jm_getInstance_0) jm_get_4 _className _functionName _specialMessage _exception))
        (JR.print (PreLogUtil.jstatic_LOG_SUCCESS))
        (JR.println _message))))

(define (PreLogUtil.jm_putS_3 _specialMessage _className _functionName)
    (let ()
      (let/ec jreturn
        (PreLogUtil.jm_putSE_4 _specialMessage _className _functionName (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0))))))

(define (PreLogUtil.jm_putSE_4 _specialMessage _className _functionName _exception)
    (let ([_message JR.null])
      (let/ec jreturn
        (set! _message (send (LogFormatUtil.jm_getInstance_0) jm_get_4 _className _functionName _specialMessage _exception))
        (JR.print (PreLogUtil.jstatic_LOG_SUCCESS))
        (JR.println _message))))



