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
  "../../../../../org/allbinary/layer/LayerInterfaceFactoryInterface.rkt"
  "./PickedUpLayerInterfaceFactoryInterface.rkt")
(provide (all-defined-out))

(define CountedPickedUpLayerInterfaceFactoryInterface%
  (class JObject%
    (super-new)
    (define/public (jm_getId_0)
      (raise (JR.newException "AbstractMethodError" "getId")))
    (define/public (jm_getTotal_0)
      (raise (JR.newException "AbstractMethodError" "getTotal")))))
(define (CountedPickedUpLayerInterfaceFactoryInterface.jclassValue) CountedPickedUpLayerInterfaceFactoryInterface%)

(define (CountedPickedUpLayerInterfaceFactoryInterface.jnew_0)
  (define this (new CountedPickedUpLayerInterfaceFactoryInterface% [jclass "CountedPickedUpLayerInterfaceFactoryInterface"]))
  this)



