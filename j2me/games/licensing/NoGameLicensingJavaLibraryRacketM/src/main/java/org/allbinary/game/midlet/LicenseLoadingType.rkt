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
;; package org.allbinary.game.midlet

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define LicenseLoadingType%
  (class JObject%
    (super-new)))
(define (LicenseLoadingType.jclassValue) LicenseLoadingType%)

(define (LicenseLoadingType.jnew_1 _name)
  (define this (new LicenseLoadingType% [jclass "LicenseLoadingType"]))
    (let ()
      (let/ec jreturn (void)))
  this)



