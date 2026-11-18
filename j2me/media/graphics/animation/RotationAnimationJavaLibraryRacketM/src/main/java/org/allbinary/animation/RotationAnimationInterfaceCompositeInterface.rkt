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
  "./IndexedAnimationInterfaceCompositeInterface.rkt")
(provide (all-defined-out))

(define RotationAnimationInterfaceCompositeInterface%
  (class JObject%
    (super-new)
    (define/public (jm_getRotationAnimationInterface_0)
      (raise (JR.newException "AbstractMethodError" "getRotationAnimationInterface")))
    (define/public (jm_setFrame_1 _index)
      (raise (JR.newException "AbstractMethodError" "setFrame")))))
(define (RotationAnimationInterfaceCompositeInterface.jclassValue) RotationAnimationInterfaceCompositeInterface%)

(define (RotationAnimationInterfaceCompositeInterface.jnew_0)
  (define this (new RotationAnimationInterfaceCompositeInterface% [jclass "RotationAnimationInterfaceCompositeInterface"]))
  this)



