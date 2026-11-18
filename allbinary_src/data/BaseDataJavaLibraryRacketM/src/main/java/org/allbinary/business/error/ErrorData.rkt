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
;; package org.allbinary.business.error

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define ErrorData%
  (class JObject%
    (super-new)
    (field [f_NAME JR.null])
    (field [f_TEXT JR.null])))
(define (ErrorData.jclassValue) ErrorData%)

(define ErrorData.jcell_instance 'jnone)
(define (ErrorData.jstatic_instance)
  (when (eq? ErrorData.jcell_instance 'jnone) (set! ErrorData.jcell_instance (ErrorData.jnew_0)))
  ErrorData.jcell_instance)
(define (ErrorData.jsetstatic_instance value) (set! ErrorData.jcell_instance value))

(define (ErrorData.jnew_0)
  (define this (new ErrorData% [jclass "ErrorData"]))
    (set-field! f_NAME this "ERROR_NAME")
    (set-field! f_TEXT this "ERROR_TEXT")
    (let ()
      (let/ec jreturn (void)))
  this)

(define (ErrorData.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (ErrorData.jstatic_instance)))))



