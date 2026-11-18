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
(lazy-require ["../../../../../org/allbinary/logic/java/exception/ExceptionUtil.rkt" (ExceptionUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonLabels.rkt" (CommonLabels.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonSeps.rkt" (CommonSeps.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/time/TimeStampUtil.rkt" (TimeStampUtil.jm_getInstance_0)])
(provide (all-defined-out))

;ActualPlatform
(define LogFormatUtil%
  (class JObject%
    (super-new)
    (field [f_timeStampUtil JR.null])
    (field [f_commonSeps JR.null])
    (field [f_NONE JR.null])
    (field [f_LOG_ERROR JR.null])
    (field [f_EMPTY JR.null])
    (field [f_STACK_TRACE JR.null])
    (field [f_TIME JR.null])
    (field [f_CLASS_NAME JR.null])
    (field [f_FUNCTION_CALL JR.null])
    (field [f_SPECIAL_MESSAGE JR.null])
    (field [f_stringUtil JR.null])
    (field [f_exceptionUtil JR.null])
    (field [f_nullUtil JR.null])
    (define/public (jm_get_4 _className _functionName _specialMessage _exception)
    (let ([_stringBuffer JR.null])
      (let/ec jreturn
        (set! _stringBuffer (send this jm_getF_2 _className _functionName))
        (send _stringBuffer jm_append_1 (send this jm_getO_1 _exception))
        (send _stringBuffer jm_append_1 (get-field f_SPECIAL_MESSAGE this))
        (send _stringBuffer jm_append_1 _specialMessage)
        (send _stringBuffer jm_append_1 (get-field f_NEW_LINE (get-field f_commonSeps this)))
        (jreturn (send _stringBuffer jm_toString_0)))))
    (define/public (jm_getS_3 _className _functionName _specialMessage)
    (let ([_stringBuffer JR.null])
      (let/ec jreturn
        (set! _stringBuffer (send this jm_getF_2 _className _functionName))
        (send _stringBuffer jm_append_1 (get-field f_SPECIAL_MESSAGE this))
        (send _stringBuffer jm_append_1 _specialMessage)
        (send _stringBuffer jm_append_1 (get-field f_NEW_LINE (get-field f_commonSeps this)))
        (jreturn (send _stringBuffer jm_toString_0)))))
    (define/public (jm_getF_2 _className _functionName)
    (let ([_stringBuffer JR.null])
      (let/ec jreturn
        (set! _stringBuffer (StringMaker.jnew_0))
        (send _stringBuffer jm_append_1 (get-field f_TIME this))
        (send _stringBuffer jm_append_1 (send (get-field f_timeStampUtil this) jm_getAsString_0))
        (send _stringBuffer jm_append_1 (get-field f_CLASS_NAME this))
        (send _stringBuffer jm_append_1 _className)
        (send _stringBuffer jm_append_1 (get-field f_FUNCTION_CALL this))
        (send _stringBuffer jm_append_1 _functionName)
        (jreturn _stringBuffer))))
    (define/public (jm_getO_1 _exception)
    (let ([_stringBuffer JR.null][_exceptionAsString JR.null])
      (let/ec jreturn
        (if (not (eq? _exception (get-field f_NULL_OBJECT (get-field f_nullUtil this))))
            (begin
            (set! _stringBuffer (StringMaker.jnew_0))
            (send _stringBuffer jm_append_1 (get-field f_LOG_ERROR this))
            (set! _exceptionAsString (JR.toString _exception))
            (send _stringBuffer jm_append_1 _exceptionAsString)
            (send _stringBuffer jm_append_1 (get-field f_STACK_TRACE this))
            (if (not (eq? _exception (get-field f_NULL_OBJECT (get-field f_nullUtil this))))
                (begin
                (send _stringBuffer jm_append_1 (send (get-field f_exceptionUtil this) jm_getStackTrace_1 _exception)))
                (begin
                (send _stringBuffer jm_append_1 (get-field f_NULL_STRING (get-field f_stringUtil this)))))
            (jreturn (send _stringBuffer jm_toString_0)))
            (begin
            (jreturn (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0))))))))))
(define (LogFormatUtil.jclassValue) LogFormatUtil%)

(define LogFormatUtil.jcell_instance 'jnone)
(define (LogFormatUtil.jstatic_instance)
  (when (eq? LogFormatUtil.jcell_instance 'jnone) (set! LogFormatUtil.jcell_instance (LogFormatUtil.jnew_0)))
  LogFormatUtil.jcell_instance)
(define (LogFormatUtil.jsetstatic_instance value) (set! LogFormatUtil.jcell_instance value))

(define (LogFormatUtil.jnew_0)
  (define this (new LogFormatUtil% [jclass "LogFormatUtil"]))
    (set-field! f_timeStampUtil this (TimeStampUtil.jm_getInstance_0))
    (set-field! f_commonSeps this (CommonSeps.jm_getInstance_0))
    (set-field! f_NONE this "None")
    (set-field! f_LOG_ERROR this "\nLog-Error: ")
    (set-field! f_EMPTY this "Empty")
    (set-field! f_STACK_TRACE this "\nStack Trace: ")
    (set-field! f_TIME this "Time: ")
    (set-field! f_CLASS_NAME this (get-field f_SPACE (get-field f_commonSeps this)))
    (set-field! f_FUNCTION_CALL this (get-field f_COLON_SEP (CommonLabels.jm_getInstance_0)))
    (set-field! f_SPECIAL_MESSAGE this "> ")
    (set-field! f_stringUtil this (StringUtil.jm_getInstance_0))
    (set-field! f_exceptionUtil this (ExceptionUtil.jm_getInstance_0))
    (set-field! f_nullUtil this (NullUtil.jm_getInstance_0))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (LogFormatUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (LogFormatUtil.jstatic_instance)))))



