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
;; package org.allbinary.game.health

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define HealthInterfaceCompositeInterface%
  (class JObject%
    (super-new)
    (define/public (jm_getHealthInterface_0)
      (raise (JR.newException "AbstractMethodError" "getHealthInterface")))))
(define (HealthInterfaceCompositeInterface.jclassValue) HealthInterfaceCompositeInterface%)

(define (HealthInterfaceCompositeInterface.jnew_0)
  (define this (new HealthInterfaceCompositeInterface% [jclass "HealthInterfaceCompositeInterface"]))
  this)



