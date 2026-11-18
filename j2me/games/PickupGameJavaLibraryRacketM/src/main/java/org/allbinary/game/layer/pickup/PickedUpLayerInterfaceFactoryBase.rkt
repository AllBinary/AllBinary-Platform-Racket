#lang racket/base
;; 
;; AllBinary Open License Version 1 
;; Copyright (c) 2025 AllBinary 
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
  "./PickedUpLayerInterfaceFactoryInterface.rkt")
(provide (all-defined-out))

(define PickedUpLayerInterfaceFactoryBase%
  (class JObject%
    (super-new)
    (define/public (jm_getIconLayer_0)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "RuntimeException")))))
    (define/public (jm_getAnimationInterface_0)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "RuntimeException")))))
    (define/public (jm_getPickedUpLayerType_0)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "RuntimeException")))))))
(define (PickedUpLayerInterfaceFactoryBase.jclassValue) PickedUpLayerInterfaceFactoryBase%)

(define PickedUpLayerInterfaceFactoryBase.jcell_NULL_PICKED_UP_LAYER_FACTORY_BASE 'jnone)
(define (PickedUpLayerInterfaceFactoryBase.jstatic_NULL_PICKED_UP_LAYER_FACTORY_BASE)
  (when (eq? PickedUpLayerInterfaceFactoryBase.jcell_NULL_PICKED_UP_LAYER_FACTORY_BASE 'jnone) (set! PickedUpLayerInterfaceFactoryBase.jcell_NULL_PICKED_UP_LAYER_FACTORY_BASE (PickedUpLayerInterfaceFactoryBase.jnew_0)))
  PickedUpLayerInterfaceFactoryBase.jcell_NULL_PICKED_UP_LAYER_FACTORY_BASE)
(define (PickedUpLayerInterfaceFactoryBase.jsetstatic_NULL_PICKED_UP_LAYER_FACTORY_BASE value) (set! PickedUpLayerInterfaceFactoryBase.jcell_NULL_PICKED_UP_LAYER_FACTORY_BASE value))

(define (PickedUpLayerInterfaceFactoryBase.jnew_0)
  (define this (new PickedUpLayerInterfaceFactoryBase% [jclass "PickedUpLayerInterfaceFactoryBase"]))
  this)



