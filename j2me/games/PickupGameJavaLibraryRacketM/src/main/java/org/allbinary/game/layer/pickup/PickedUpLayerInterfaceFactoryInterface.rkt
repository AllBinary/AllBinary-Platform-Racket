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
;; package org.allbinary.game.layer.pickup

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define PickedUpLayerInterfaceFactoryInterface%
  (class JObject%
    (super-new)
    (define/public (jm_getPickedUpLayerType_0)
      (raise (JR.newException "AbstractMethodError" "getPickedUpLayerType")))
    (define/public (jm_getIconLayer_0)
      (raise (JR.newException "AbstractMethodError" "getIconLayer")))
    (define/public (jm_getAnimationInterface_0)
      (raise (JR.newException "AbstractMethodError" "getAnimationInterface")))))
(define (PickedUpLayerInterfaceFactoryInterface.jclassValue) PickedUpLayerInterfaceFactoryInterface%)

(define (PickedUpLayerInterfaceFactoryInterface.jnew_0)
  (define this (new PickedUpLayerInterfaceFactoryInterface% [jclass "PickedUpLayerInterfaceFactoryInterface"]))
  this)



