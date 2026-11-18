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
;; package org.allbinary.game.ag.layer.pickup.health

(require racket/class racket/lazy-require
  "../../../../../../../allbinary_java.rkt"
  "../../../../../../../org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactory.rkt"
  "../../../../../../../org/allbinary/game/layer/pickup/PickupProcessorInterface.rkt")
(lazy-require ["../../../../../../../org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory.rkt" (FeaturedAnimationInterfaceFactoryInterfaceFactory.jm_getInstance_0)])
(lazy-require ["../../../../../../../org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory.rkt" (CountedPickedUpLayerInterfaceFactory.jstatic_NULL_COUNTED_PICKUP_LAYER_FACTORY)])
(lazy-require ["../../../../../../../org/allbinary/game/layer/pickup/IconLayerFactory.rkt" (IconLayerFactory.jm_getInstance_3)])
(lazy-require ["../../../../../../../org/allbinary/game/layer/pickup/PickedUpLayerTypeFactory.rkt" (PickedUpLayerTypeFactory.jm_getInstance_0)])
(lazy-require ["./HealLayerCircularStaticPool.rkt" (HealLayerCircularStaticPool.jnew_2)])
(lazy-require ["./HealLayerFactory.rkt" (HealLayerFactory.jnew_0)])
(lazy-require ["./HealthResources.rkt" (HealthResources.jm_getInstance_0)])
(provide (all-defined-out))

(define HealPickedUpLayerInterfaceFactory%
  (class PickedUpLayerInterfaceFactory%
    (super-new)
    (field [f_pool JR.null])
    (define/public (jm_getTotal_0)
    (let ()
      (let/ec jreturn
        (jreturn 1))))
    (define/public (jm_process_1 _sourceLayerInterface)
    (let ()
      (let/ec jreturn
        (send (get-field f_pool this) jm_visit_1 _sourceLayerInterface))))))
(define (HealPickedUpLayerInterfaceFactory.jclassValue) HealPickedUpLayerInterfaceFactory%)

(define HealPickedUpLayerInterfaceFactory.jcell_pickedUpLayerInterfaceFactoryInterface 'jnone)
(define (HealPickedUpLayerInterfaceFactory.jstatic_pickedUpLayerInterfaceFactoryInterface)
  (when (eq? HealPickedUpLayerInterfaceFactory.jcell_pickedUpLayerInterfaceFactoryInterface 'jnone) (set! HealPickedUpLayerInterfaceFactory.jcell_pickedUpLayerInterfaceFactoryInterface (CountedPickedUpLayerInterfaceFactory.jstatic_NULL_COUNTED_PICKUP_LAYER_FACTORY)))
  HealPickedUpLayerInterfaceFactory.jcell_pickedUpLayerInterfaceFactoryInterface)
(define (HealPickedUpLayerInterfaceFactory.jsetstatic_pickedUpLayerInterfaceFactoryInterface value) (set! HealPickedUpLayerInterfaceFactory.jcell_pickedUpLayerInterfaceFactoryInterface value))

(define (HealPickedUpLayerInterfaceFactory.jnew_0)
  (define this (new HealPickedUpLayerInterfaceFactory% [jclass "HealPickedUpLayerInterfaceFactory"]))
    (set-field! f_pool this (HealLayerCircularStaticPool.jnew_2 (HealLayerFactory.jnew_0) 1))
    (let ()
      (let/ec jreturn
        (void)))
  this)

(define (HealPickedUpLayerInterfaceFactory.jm_init_0)
    (let ()
      (let/ec jreturn
        (set! HealPickedUpLayerInterfaceFactory.jcell_pickedUpLayerInterfaceFactoryInterface (HealPickedUpLayerInterfaceFactory.jnew_0)))))

(define (HealPickedUpLayerInterfaceFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (HealPickedUpLayerInterfaceFactory.jstatic_pickedUpLayerInterfaceFactoryInterface)))))



