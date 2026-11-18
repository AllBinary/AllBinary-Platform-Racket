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

(define LicenseStrings%
  (class JObject%
    (super-new)
    (field [f_LOCKED JR.null])))
(define (LicenseStrings.jclassValue) LicenseStrings%)

(define LicenseStrings.jcell_instance 'jnone)
(define (LicenseStrings.jstatic_instance)
  (when (eq? LicenseStrings.jcell_instance 'jnone) (set! LicenseStrings.jcell_instance (LicenseStrings.jnew_0)))
  LicenseStrings.jcell_instance)
(define (LicenseStrings.jsetstatic_instance value) (set! LicenseStrings.jcell_instance value))

(define (LicenseStrings.jnew_0)
  (define this (new LicenseStrings% [jclass "LicenseStrings"]))
    (set-field! f_LOCKED this "Demo Locked Feature")
  this)

(define (LicenseStrings.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (LicenseStrings.jstatic_instance)))))



