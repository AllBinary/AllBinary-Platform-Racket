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
  "../../../../../allbinary_java.rkt"
  "../../../../../org/allbinary/layer/LayerInterface.rkt")
(provide (all-defined-out))

(define PickedUpLayerInterface%
  (class JObject%
    (super-new)
    (define/public (jm_getPickedUpLayerInterfaceFactoryInterface_0)
      (raise (JR.newException "AbstractMethodError" "getPickedUpLayerInterfaceFactoryInterface")))
    (define/public (jm_setPickedUp_0)
      (raise (JR.newException "AbstractMethodError" "setPickedUp")))))
(define (PickedUpLayerInterface.jclassValue) PickedUpLayerInterface%)

(define (PickedUpLayerInterface.jnew_0)
  (define this (new PickedUpLayerInterface% [jclass "PickedUpLayerInterface"]))
  this)



