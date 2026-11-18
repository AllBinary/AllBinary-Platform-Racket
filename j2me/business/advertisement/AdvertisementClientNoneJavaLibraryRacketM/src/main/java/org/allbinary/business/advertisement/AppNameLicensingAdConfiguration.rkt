#lang racket/base
;; Generated Code Do Not Modify
;; package org.allbinary.business.advertisement

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "./AdConfiguration.rkt")
(lazy-require ["../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define AppNameLicensingAdConfiguration%
  (class AdConfiguration%
    (super-new)))
(define (AppNameLicensingAdConfiguration.jclassValue) AppNameLicensingAdConfiguration%)

(define (AppNameLicensingAdConfiguration.jnew_0)
  (define this (new AppNameLicensingAdConfiguration% [jclass "AppNameLicensingAdConfiguration"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)



