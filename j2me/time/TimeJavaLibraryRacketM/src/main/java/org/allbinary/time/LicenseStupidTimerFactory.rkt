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
;; package org.allbinary.time

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(lazy-require ["./StupidTimer.rkt" (StupidTimer.jnew_0)])
(provide (all-defined-out))

(define LicenseStupidTimerFactory%
  (class JObject%
    (super-new)))
(define (LicenseStupidTimerFactory.jclassValue) LicenseStupidTimerFactory%)

(define LicenseStupidTimerFactory.jcell_instance 'jnone)
(define (LicenseStupidTimerFactory.jstatic_instance)
  (when (eq? LicenseStupidTimerFactory.jcell_instance 'jnone) (set! LicenseStupidTimerFactory.jcell_instance (StupidTimer.jnew_0)))
  LicenseStupidTimerFactory.jcell_instance)
(define (LicenseStupidTimerFactory.jsetstatic_instance value) (set! LicenseStupidTimerFactory.jcell_instance value))

(define (LicenseStupidTimerFactory.jnew_0)
  (define this (new LicenseStupidTimerFactory% [jclass "LicenseStupidTimerFactory"]))
  this)

(define (LicenseStupidTimerFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (LicenseStupidTimerFactory.jstatic_instance)))))



