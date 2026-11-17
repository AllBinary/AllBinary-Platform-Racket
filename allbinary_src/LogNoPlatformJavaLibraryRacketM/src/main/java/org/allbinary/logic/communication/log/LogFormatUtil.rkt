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
(provide (all-defined-out))

;NoPlatform
(define LogFormatUtil%
  (class JObject%
    (super-new)
    (define/public (jm_get_4 _className _functionName _specialMessage _exception)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "RuntimeException")))))
    (define/public (jm_getS_3 _className _functionName _specialMessage)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "RuntimeException")))))
    (define/public (jm_getO_1 _exception)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "RuntimeException")))))))

(define LogFormatUtil.jcell_instance 'jnone)
(define (LogFormatUtil.jstatic_instance)
  (when (eq? LogFormatUtil.jcell_instance 'jnone) (set! LogFormatUtil.jcell_instance (LogFormatUtil.jnew_0)))
  LogFormatUtil.jcell_instance)

(define (LogFormatUtil.jnew_0)
  (define this (new LogFormatUtil% [jclass "LogFormatUtil"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (LogFormatUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (LogFormatUtil.jstatic_instance)))))



