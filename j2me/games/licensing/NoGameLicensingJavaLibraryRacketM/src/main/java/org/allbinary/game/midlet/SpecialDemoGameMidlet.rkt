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
  "../../../../allbinary_java.rkt"
  "./DemoGameMidlet.rkt")
(lazy-require ["../../../../org/allbinary/logic/system/security/licensing/LicenseServerInitFileUtil.rkt" (LicenseServerInitFileUtil.jnew_0)])
(provide (all-defined-out))

(define SpecialDemoGameMidlet%
  (class DemoGameMidlet%
    (super-new)
    (define/public (jm_initView_0)
    (let ()
      (let/ec jreturn (void))))
    (define/override (jm_preInit_0)
    (let ()
      (let/ec jreturn
        (send (LicenseServerInitFileUtil.jnew_0) jm_init_0))))))
(define (SpecialDemoGameMidlet.jclassValue) SpecialDemoGameMidlet%)

(define (SpecialDemoGameMidlet.jnew_4 _clientInformationFactory _licenseLoadingType _demoSetupFactory _licenseCheckRunnableFactory)
  (define this (new SpecialDemoGameMidlet% [jclass "SpecialDemoGameMidlet"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)



