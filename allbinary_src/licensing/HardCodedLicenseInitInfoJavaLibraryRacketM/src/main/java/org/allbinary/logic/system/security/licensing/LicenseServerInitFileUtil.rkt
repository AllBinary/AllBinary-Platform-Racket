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

(define LicenseServerInitFileUtil%
  (class JObject%
    (super-new)
    (define/public (jm_init_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_write_0)
    (let ()
      (let/ec jreturn (void))))))
(define (LicenseServerInitFileUtil.jclassValue) LicenseServerInitFileUtil%)

(define (LicenseServerInitFileUtil.jnew_0)
  (define this (new LicenseServerInitFileUtil% [jclass "LicenseServerInitFileUtil"]))
  this)



