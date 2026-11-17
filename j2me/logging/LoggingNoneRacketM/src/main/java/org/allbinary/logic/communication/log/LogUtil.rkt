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

;ActualPlatform
(define LogUtil%
  (class JObject%
    (super-new)
    (define/public (jm_putP_1 _log)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_putF_3 _specialMessage _anyType _functionName)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_putFS_3 _specialMessage _className _functionName)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_put_4 _specialMessage _anyType _functionName _exception)
    (let ()
      (let/ec jreturn (void))))))

(define LogUtil.jcell_instance 'jnone)
(define (LogUtil.jstatic_instance)
  (when (eq? LogUtil.jcell_instance 'jnone) (set! LogUtil.jcell_instance (LogUtil.jnew_0)))
  LogUtil.jcell_instance)

(define (LogUtil.jnew_0)
  (define this (new LogUtil% [jclass "LogUtil"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (LogUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (LogUtil.jstatic_instance)))))



