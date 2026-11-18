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
;; package org.allbinary.game.physics.acceleration

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define AccelerateableInterface%
  (class JObject%
    (super-new)
    (define/public (jm_accelerate_1 _accelerate)
      (raise (JR.newException "AbstractMethodError" "accelerate")))))
(define (AccelerateableInterface.jclassValue) AccelerateableInterface%)

(define (AccelerateableInterface.jnew_0)
  (define this (new AccelerateableInterface% [jclass "AccelerateableInterface"]))
  this)



