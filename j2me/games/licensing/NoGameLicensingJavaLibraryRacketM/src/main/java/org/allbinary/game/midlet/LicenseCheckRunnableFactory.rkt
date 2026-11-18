#lang racket/base
;; 
;; AllBinary Open License Version 1 
;; Copyright (c) 2025 AllBinary 
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
(lazy-require ["../../../../org/allbinary/thread/NullABRunnable.rkt" (NullABRunnable.jm_getInstance_0)])
(provide (all-defined-out))

(define LicenseCheckRunnableFactory%
  (class JObject%
    (super-new)
    (define/public (jm_getInstance_1 _specialDemoGameMidlet)
    (let ()
      (let/ec jreturn
        (jreturn (NullABRunnable.jm_getInstance_0)))))))
(define (LicenseCheckRunnableFactory.jclassValue) LicenseCheckRunnableFactory%)

(define (LicenseCheckRunnableFactory.jnew_0)
  (define this (new LicenseCheckRunnableFactory% [jclass "LicenseCheckRunnableFactory"]))
  this)



