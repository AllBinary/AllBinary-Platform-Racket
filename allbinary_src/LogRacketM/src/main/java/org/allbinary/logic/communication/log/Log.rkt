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
(lazy-require ["../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/communication/log/LogFormatUtil.rkt" (LogFormatUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define Log%
  (class JObject%
    (super-new)
    (field [f_logFormatUtil JR.null])
    (field [f_specialMessage JR.null])
    (field [f_anyType JR.null])
    (field [f_functionName JR.null])
    (field [f_exception JR.null])
    (define/public (jm_getSpecialMessage_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_specialMessage this)))))
    (define/public (jm_getObject_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_anyType this)))))
    (define/public (jm_getFunctionName_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_functionName this)))))
    (define/public (jm_getThrowable_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_exception this)))))
    (define/override (jm_toString_0)
    (let ([_className JR.null][_clazz JR.null])
      (let/ec jreturn
        (set! _className (get-field f_EMPTY (CommonStrings.jm_getInstance_0)))
        (set! _clazz (JR.className (get-field f_anyType this)))
        (when (not (JR.null? (send _clazz jm_getName_0)))
            (begin
            (set! _className (send _clazz jm_getName_0))))
        (jreturn (send (get-field f_logFormatUtil this) jm_get_4 _className (get-field f_functionName this) (get-field f_specialMessage this) (get-field f_exception this))))))))
(define (Log.jclassValue) Log%)

(define (Log.jnew_4 _specialMessage _anyType _functionName _exception)
  (define this (new Log% [jclass "Log"]))
    (set-field! f_logFormatUtil this (LogFormatUtil.jm_getInstance_0))
    
    
    
    
    (let ()
      (let/ec jreturn
        (set-field! f_specialMessage this _specialMessage)
        (set-field! f_anyType this _anyType)
        (set-field! f_functionName this _functionName)
        (set-field! f_exception this _exception)))
  this)



