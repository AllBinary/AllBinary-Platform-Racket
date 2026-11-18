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

(define HealthVisitorInterface%
  (class JObject%
    (super-new)
    (define/public (jm_visit_1 _healthInterface)
      (raise (JR.newException "AbstractMethodError" "visit")))))
(define (HealthVisitorInterface.jclassValue) HealthVisitorInterface%)

(define (HealthVisitorInterface.jnew_0)
  (define this (new HealthVisitorInterface% [jclass "HealthVisitorInterface"]))
  this)



