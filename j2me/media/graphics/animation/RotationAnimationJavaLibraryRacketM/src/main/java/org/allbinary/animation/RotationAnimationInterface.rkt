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
;; package org.allbinary.animation

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "../../../org/allbinary/direction/DirectionalInterface.rkt"
  "./IndexedAnimationInterface.rkt")
(provide (all-defined-out))

(define RotationAnimationInterface%
  (class JObject%
    (super-new)
    (define/public (jm_getAngleInfoP_0)
      (raise (JR.newException "AbstractMethodError" "getAngleInfoP")))
    (define/public (jm_nextRotation_0)
      (raise (JR.newException "AbstractMethodError" "nextRotation")))
    (define/public (jm_previousRotation_0)
      (raise (JR.newException "AbstractMethodError" "previousRotation")))))
(define (RotationAnimationInterface.jclassValue) RotationAnimationInterface%)

(define (RotationAnimationInterface.jnew_0)
  (define this (new RotationAnimationInterface% [jclass "RotationAnimationInterface"]))
  this)



