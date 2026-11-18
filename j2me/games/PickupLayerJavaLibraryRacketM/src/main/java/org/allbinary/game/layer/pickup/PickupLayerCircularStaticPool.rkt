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
  "../../../../../org/allbinary/layer/AllBinaryLayerCircularPool.rkt")
(provide (all-defined-out))

(define PickupLayerCircularStaticPool%
  (class AllBinaryLayerCircularPool%
    (super-new)
    (define/public (jm_getInstanceXYZ_4 _pickedUpLayerInterfaceFactoryInterface _x _y _z)
    (let ([_pickupLayer JR.null])
      (let/ec jreturn
        (set! _pickupLayer (send this jm_getNextInstance_0))
        (send _pickupLayer jm_initXYZ_3 _x _y _z)
        (send _pickupLayer jm_init_2 _pickedUpLayerInterfaceFactoryInterface (send _pickedUpLayerInterfaceFactoryInterface jm_getAnimationInterface_0))
        (jreturn _pickupLayer))))))
(define (PickupLayerCircularStaticPool.jclassValue) PickupLayerCircularStaticPool%)

(define PickupLayerCircularStaticPool.jcell_SINGLETON 'jnone)
(define (PickupLayerCircularStaticPool.jstatic_SINGLETON)
  (when (eq? PickupLayerCircularStaticPool.jcell_SINGLETON 'jnone) (set! PickupLayerCircularStaticPool.jcell_SINGLETON (PickupLayerCircularStaticPool.jnew_0)))
  PickupLayerCircularStaticPool.jcell_SINGLETON)
(define (PickupLayerCircularStaticPool.jsetstatic_SINGLETON value) (set! PickupLayerCircularStaticPool.jcell_SINGLETON value))

(define (PickupLayerCircularStaticPool.jnew_0)
  (define this (new PickupLayerCircularStaticPool% [jclass "PickupLayerCircularStaticPool"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (PickupLayerCircularStaticPool.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (PickupLayerCircularStaticPool.jstatic_SINGLETON)))))



