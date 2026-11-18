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
  "../../../../../java/lang/System.rkt"
  "../../../../../java/lang/Integer.rkt")
(lazy-require ["../../../../../org/allbinary/TsUtil.rkt" (TsUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonSeps.rkt" (CommonSeps.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["./LogFormatUtil.rkt" (LogFormatUtil.jm_getInstance_0)])
(provide (all-defined-out))

;ActualPlatform
(define LogUtil%
  (class JObject%
    (super-new)
    (field [f_logFormatUtil JR.null])
    (field [f_LOG_SUCCESS JR.null])
    (define/public (jm_putL_1 _log)
    (let ([_specialMessage JR.null][_anyType JR.null][_functionName JR.null][_exception JR.null])
      (let/ec jreturn
        (set! _specialMessage (send _log jm_getSpecialMessage_0))
        (set! _anyType (send _log jm_getObject_0))
        (set! _functionName (send _log jm_getFunctionName_0))
        (set! _exception (send _log jm_getThrowable_0))
        (send this jm_put_4 _specialMessage _anyType _functionName _exception))))
    (define/public (jm_putF_3 _specialMessage _anyType _functionName)
    (let ([_className JR.null][_message JR.null])
      (let/ec jreturn
        (set! _className (get-field f_EMPTY (CommonStrings.jm_getInstance_0)))
        (when (not (JR.null? (JR.className _anyType)))
            (begin
            (set! _className (send (send (send (send (StringMaker.jnew_0) jm_append_1 (JR.className _anyType)) jm_append_1 (get-field f_COLON (CommonSeps.jm_getInstance_0))) jm_append_1 (Integer.jm_toHexString_1 (send (TsUtil.jm_getInstance_0) jm_hashCode_1 _anyType))) jm_toString_0))))
        (set! _message (send (get-field f_logFormatUtil this) jm_getS_3 _className _functionName _specialMessage))
        (JR.print (get-field f_LOG_SUCCESS this))
        (JR.println _message))))
    (define/public (jm_putFS_3 _specialMessage _className _functionName)
    (let ([_message JR.null])
      (let/ec jreturn
        (set! _message (send (get-field f_logFormatUtil this) jm_getS_3 _className _functionName _specialMessage))
        (JR.print (get-field f_LOG_SUCCESS this))
        (JR.println _message))))
    (define/public (jm_put_4 _specialMessage _anyType _functionName _exception)
    (let ([_className JR.null][_hashCodeValue JR.null][_hexString JR.null][_message JR.null])
      (let/ec jreturn
        (set! _className (get-field f_EMPTY (CommonStrings.jm_getInstance_0)))
        (when (not (JR.null? (JR.className _anyType)))
            (begin
            (set! _hashCodeValue (send (TsUtil.jm_getInstance_0) jm_hashCode_1 _anyType))
            (set! _hexString (Integer.jm_toHexString_1 _hashCodeValue))
            (set! _className (send (send (send (send (StringMaker.jnew_0) jm_append_1 (JR.className _anyType)) jm_append_1 (get-field f_COLON (CommonSeps.jm_getInstance_0))) jm_append_1 _hexString) jm_toString_0))))
        (set! _message (send (get-field f_logFormatUtil this) jm_get_4 _className _functionName _specialMessage _exception))
        (JR.print (get-field f_LOG_SUCCESS this))
        (JR.println _message))))))
(define (LogUtil.jclassValue) LogUtil%)

(define LogUtil.jcell_instance 'jnone)
(define (LogUtil.jstatic_instance)
  (when (eq? LogUtil.jcell_instance 'jnone) (set! LogUtil.jcell_instance (LogUtil.jnew_0)))
  LogUtil.jcell_instance)
(define (LogUtil.jsetstatic_instance value) (set! LogUtil.jcell_instance value))

(define (LogUtil.jnew_0)
  (define this (new LogUtil% [jclass "LogUtil"]))
    (set-field! f_logFormatUtil this (LogFormatUtil.jm_getInstance_0))
    (set-field! f_LOG_SUCCESS this "org.allbinary: ")
    (let ()
      (let/ec jreturn (void)))
  this)

(define (LogUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (LogUtil.jstatic_instance)))))



