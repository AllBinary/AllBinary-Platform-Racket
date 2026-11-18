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
;; package org.allbinary.logic.system.security.licensing

(require racket/class racket/lazy-require
  "../../../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define LicenseUtil%
  (class JObject%
    (super-new)
    (define/public (jm_init_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_isRunning_0)
    (let ()
      (let/ec jreturn
        (jreturn #f))))
    (define/public (jm_setRunning_1 _running)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_shouldWait_1 _commandListener)
    (let ()
      (let/ec jreturn
        (jreturn (send this jm_isRunning_0)))))))
(define (LicenseUtil.jclassValue) LicenseUtil%)

(define LicenseUtil.jcell_instance 'jnone)
(define (LicenseUtil.jstatic_instance)
  (when (eq? LicenseUtil.jcell_instance 'jnone) (set! LicenseUtil.jcell_instance (LicenseUtil.jnew_0)))
  LicenseUtil.jcell_instance)
(define (LicenseUtil.jsetstatic_instance value) (set! LicenseUtil.jcell_instance value))

(define (LicenseUtil.jnew_0)
  (define this (new LicenseUtil% [jclass "LicenseUtil"]))
  this)

(define (LicenseUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (LicenseUtil.jstatic_instance)))))



