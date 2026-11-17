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
(lazy-require ["../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["./LogFormatUtil.rkt" (LogFormatUtil.jm_getInstance_0)])
(lazy-require ["./LogFactory.rkt" (LogFactory.jstatic_LOG)])
(provide (all-defined-out))

;ActualPlatform
(define LogUtil%
  (class JObject%
    (super-new)
    (field [f_logFormatUtil JR.null])
    (field [f_LOG_SUCCESS JR.null])
    (define/public (jm_putL_1 _log)
    (let ([_exception JR.null][_specialMessage JR.null][_anyType JR.null][_functionName JR.null])
      (let/ec jreturn
        (when (eq? _log (LogFactory.jstatic_LOG))
            (begin
            (jreturn (void))))
        (set! _exception (send _log jm_getThrowable_0))
        (when (JR.null? _exception)
            (begin
            (jreturn (void))))
        (set! _specialMessage (send _log jm_getSpecialMessage_0))
        (set! _anyType (send _log jm_getObject_0))
        (set! _functionName (send _log jm_getFunctionName_0))
        (send this jm_put_4 _specialMessage _anyType _functionName _exception))))
    (define/public (jm_putF_3 _specialMessage _anyType _functionName)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_putFS_3 _specialMessage _className _functionName)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_put_4 _specialMessage _anyType _functionName _exception)
    (let ([_className JR.null][_message JR.null])
      (let/ec jreturn
        (set! _className (get-field f_EMPTY (CommonStrings.jm_getInstance_0)))
        (when (not (JR.null? (JR.className _anyType)))
            (begin
            (set! _className (JR.className _anyType))))
        (set! _message (send (get-field f_logFormatUtil this) jm_get_4 _className _functionName _specialMessage _exception))
        (JR.print (get-field f_LOG_SUCCESS this))
        (JR.println _message))))))

(define LogUtil.jcell_instance 'jnone)
(define (LogUtil.jstatic_instance)
  (when (eq? LogUtil.jcell_instance 'jnone) (set! LogUtil.jcell_instance (LogUtil.jnew_0)))
  LogUtil.jcell_instance)

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



