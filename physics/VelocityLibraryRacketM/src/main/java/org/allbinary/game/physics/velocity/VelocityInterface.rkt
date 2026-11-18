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
;; package org.allbinary.game.physics.velocity

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "./BasicVelocityInterface.rkt")
(provide (all-defined-out))

(define VelocityInterface%
  (class JObject%
    (super-new)
    (define/public (jm_getMaxForwardVelocity_0)
      (raise (JR.newException "AbstractMethodError" "getMaxForwardVelocity")))
    (define/public (jm_getMaxReverseVelocity_0)
      (raise (JR.newException "AbstractMethodError" "getMaxReverseVelocity")))
    (define/public (jm_limitMaxXYForwardVelocity_0)
      (raise (JR.newException "AbstractMethodError" "limitMaxXYForwardVelocity")))
    (define/public (jm_limitMaxXYReverseVelocity_0)
      (raise (JR.newException "AbstractMethodError" "limitMaxXYReverseVelocity")))
    (define/public (jm_limitXYToForwardAndReverseMaxVelocity_0)
      (raise (JR.newException "AbstractMethodError" "limitXYToForwardAndReverseMaxVelocity")))
    (define/public (jm_limitMaxXYVelocity_1 _maxVelocity)
      (raise (JR.newException "AbstractMethodError" "limitMaxXYVelocity")))
    (define/public (jm_setMaxForwardVelocity_1 _maxForwardVelocity)
      (raise (JR.newException "AbstractMethodError" "setMaxForwardVelocity")))
    (define/public (jm_setMaxReverseVelocity_1 _maxReverseVelocity)
      (raise (JR.newException "AbstractMethodError" "setMaxReverseVelocity")))))
(define (VelocityInterface.jclassValue) VelocityInterface%)

(define (VelocityInterface.jnew_0)
  (define this (new VelocityInterface% [jclass "VelocityInterface"]))
  this)



