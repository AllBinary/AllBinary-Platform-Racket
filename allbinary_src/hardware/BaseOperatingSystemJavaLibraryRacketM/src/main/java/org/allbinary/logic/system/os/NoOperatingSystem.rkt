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
;; package org.allbinary.logic.system.os

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "./GenericOperatingSystem.rkt")
(provide (all-defined-out))

(define NoOperatingSystem%
  (class GenericOperatingSystem%
    (super-new)))
(define (NoOperatingSystem.jclassValue) NoOperatingSystem%)

(define NoOperatingSystem.jcell_NO_OPERATING_SYSTEM 'jnone)
(define (NoOperatingSystem.jstatic_NO_OPERATING_SYSTEM)
  (when (eq? NoOperatingSystem.jcell_NO_OPERATING_SYSTEM 'jnone) (set! NoOperatingSystem.jcell_NO_OPERATING_SYSTEM (GenericOperatingSystem.jnew_0)))
  NoOperatingSystem.jcell_NO_OPERATING_SYSTEM)
(define (NoOperatingSystem.jsetstatic_NO_OPERATING_SYSTEM value) (set! NoOperatingSystem.jcell_NO_OPERATING_SYSTEM value))

(define (NoOperatingSystem.jnew_0)
  (define this (new NoOperatingSystem% [jclass "NoOperatingSystem"]))
    (let ()
      (let/ec jreturn (void)))
  this)



