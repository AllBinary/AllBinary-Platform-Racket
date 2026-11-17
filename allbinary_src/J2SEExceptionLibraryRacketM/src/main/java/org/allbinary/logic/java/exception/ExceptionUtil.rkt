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
;; package org.allbinary.logic.java.exception

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../java/io/ByteArrayOutputStream.rkt"
  "../../../../../java/io/PrintStream.rkt")
(provide (all-defined-out))

;ActualPlatform
(define ExceptionUtil%
  (class JObject%
    (super-new)
    (field [f_NONE JR.null])
    (define/public (jm_getStackTrace_1 _e)
    (let ([_byteArrayOutputStream JR.null][_printStream JR.null][_output JR.null])
      (let/ec jreturn
        (when (not (JR.null? _e))
            (begin
            (set! _byteArrayOutputStream (ByteArrayOutputStream.jnew_0))
            (set! _printStream (PrintStream.jnew_1 _byteArrayOutputStream))
            (send _e jm_printStackTrace_1 _printStream)
            (set! _output (send _byteArrayOutputStream jm_toString_0))
            (jreturn _output)))
        (jreturn (get-field f_NONE this)))))))

(define ExceptionUtil.jcell_instance 'jnone)
(define (ExceptionUtil.jstatic_instance)
  (when (eq? ExceptionUtil.jcell_instance 'jnone) (set! ExceptionUtil.jcell_instance (ExceptionUtil.jnew_0)))
  ExceptionUtil.jcell_instance)

(define ExceptionUtil.jcell_PRETEND_EXCEPTION 'jnone)
(define (ExceptionUtil.jstatic_PRETEND_EXCEPTION)
  (when (eq? ExceptionUtil.jcell_PRETEND_EXCEPTION 'jnone) (set! ExceptionUtil.jcell_PRETEND_EXCEPTION (JR.newException "Exception" "Not Really An Exception")))
  ExceptionUtil.jcell_PRETEND_EXCEPTION)

(define (ExceptionUtil.jnew_0)
  (define this (new ExceptionUtil% [jclass "ExceptionUtil"]))
    (set-field! f_NONE this "No Stack Trace")
    (let ()
      (let/ec jreturn (void)))
  this)

(define (ExceptionUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (ExceptionUtil.jstatic_instance)))))



