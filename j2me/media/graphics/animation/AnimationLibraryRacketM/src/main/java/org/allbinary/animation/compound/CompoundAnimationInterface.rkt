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
;; package org.allbinary.animation.compound

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/animation/AnimationInterface.rkt")
(provide (all-defined-out))

(define CompoundAnimationInterface%
  (class JObject%
    (super-new)
    (define/public (jm_nextAnimation_0)
      (raise (JR.newException "AbstractMethodError" "nextAnimation")))
    (define/public (jm_previousAnimation_0)
      (raise (JR.newException "AbstractMethodError" "previousAnimation")))
    (define/public (jm_setAnimation_1 _index)
      (raise (JR.newException "AbstractMethodError" "setAnimation")))
    (define/public (jm_getCurrentAnimation_0)
      (raise (JR.newException "AbstractMethodError" "getCurrentAnimation")))))
(define (CompoundAnimationInterface.jclassValue) CompoundAnimationInterface%)

(define (CompoundAnimationInterface.jnew_0)
  (define this (new CompoundAnimationInterface% [jclass "CompoundAnimationInterface"]))
  this)



