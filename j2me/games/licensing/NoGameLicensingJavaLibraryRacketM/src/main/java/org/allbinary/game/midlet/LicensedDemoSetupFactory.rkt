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
(lazy-require ["./DemoSetup.rkt" (DemoSetup.jnew_0)])
(provide (all-defined-out))

(define LicensedDemoSetupFactory%
  (class JObject%
    (super-new)
    (define/public (jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (DemoSetup.jnew_0)))))))
(define (LicensedDemoSetupFactory.jclassValue) LicensedDemoSetupFactory%)

(define (LicensedDemoSetupFactory.jnew_0)
  (define this (new LicensedDemoSetupFactory% [jclass "LicensedDemoSetupFactory"]))
  this)



