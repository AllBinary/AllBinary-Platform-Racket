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
  "../../../../../java/io/ByteArrayOutputStream.rkt")
(provide (all-defined-out))

;ActualPlatform
(define ExceptionUtil%
  (class JObject%
    (super-new)
    (field [f_PRETEND_EXCEPTION JR.null])
    (field [f_NONE JR.null])
    (define/public (jm_getStackTrace_1 _e)
    (let ([_bs JR.null][_output JR.null])
      (let/ec jreturn
        (set! _bs (ByteArrayOutputStream.jnew_0))
        (send _e jm_printStackTrace_0)
        (set! _output (send _bs jm_toString_0))
        (jreturn _output))))))

(define ExceptionUtil.jcell_instance 'jnone)
(define (ExceptionUtil.jstatic_instance)
  (when (eq? ExceptionUtil.jcell_instance 'jnone) (set! ExceptionUtil.jcell_instance (ExceptionUtil.jnew_0)))
  ExceptionUtil.jcell_instance)

(define (ExceptionUtil.jnew_0)
  (define this (new ExceptionUtil% [jclass "ExceptionUtil"]))
    (set-field! f_PRETEND_EXCEPTION this (JR.newException "Exception" "Not Really An Exception"))
    (set-field! f_NONE this "No Stack Trace")
    (let ()
      (let/ec jreturn (void)))
  this)

(define (ExceptionUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (ExceptionUtil.jstatic_instance)))))



