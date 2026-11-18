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
;; package org.allbinary.game.ag.layer.pickup.life

(require racket/class racket/lazy-require
  "../../../../../../../allbinary_java.rkt"
  "../../../../../../../org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactory.rkt"
  "../../../../../../../org/allbinary/game/layer/pickup/PickupProcessorInterface.rkt")
(lazy-require ["../../../../../../../org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory.rkt" (FeaturedAnimationInterfaceFactoryInterfaceFactory.jm_getInstance_0)])
(lazy-require ["../../../../../../../org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory.rkt" (CountedPickedUpLayerInterfaceFactory.jstatic_NULL_COUNTED_PICKUP_LAYER_FACTORY)])
(lazy-require ["../../../../../../../org/allbinary/game/layer/pickup/IconLayerFactory.rkt" (IconLayerFactory.jm_getInstance_3)])
(lazy-require ["../../../../../../../org/allbinary/game/layer/pickup/PickedUpLayerTypeFactory.rkt" (PickedUpLayerTypeFactory.jm_getInstance_0)])
(lazy-require ["./LifeLayerCircularStaticPool.rkt" (LifeLayerCircularStaticPool.jnew_2)])
(lazy-require ["./LifeLayerFactory.rkt" (LifeLayerFactory.jnew_0)])
(lazy-require ["./LifeResources.rkt" (LifeResources.jm_getInstance_0)])
(provide (all-defined-out))

(define LifePickedUpLayerInterfaceFactory%
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
(define (LifePickedUpLayerInterfaceFactory.jclassValue) LifePickedUpLayerInterfaceFactory%)

(define LifePickedUpLayerInterfaceFactory.jcell_pickedUpLayerInterfaceFactoryInterface 'jnone)
(define (LifePickedUpLayerInterfaceFactory.jstatic_pickedUpLayerInterfaceFactoryInterface)
  (when (eq? LifePickedUpLayerInterfaceFactory.jcell_pickedUpLayerInterfaceFactoryInterface 'jnone) (set! LifePickedUpLayerInterfaceFactory.jcell_pickedUpLayerInterfaceFactoryInterface (CountedPickedUpLayerInterfaceFactory.jstatic_NULL_COUNTED_PICKUP_LAYER_FACTORY)))
  LifePickedUpLayerInterfaceFactory.jcell_pickedUpLayerInterfaceFactoryInterface)
(define (LifePickedUpLayerInterfaceFactory.jsetstatic_pickedUpLayerInterfaceFactoryInterface value) (set! LifePickedUpLayerInterfaceFactory.jcell_pickedUpLayerInterfaceFactoryInterface value))

(define (LifePickedUpLayerInterfaceFactory.jnew_0)
  (define this (new LifePickedUpLayerInterfaceFactory% [jclass "LifePickedUpLayerInterfaceFactory"]))
    (set-field! f_pool this (LifeLayerCircularStaticPool.jnew_2 (LifeLayerFactory.jnew_0) 1))
    (let ()
      (let/ec jreturn
        (void)))
  this)

(define (LifePickedUpLayerInterfaceFactory.jm_init_0)
    (let ()
      (let/ec jreturn
        (set! LifePickedUpLayerInterfaceFactory.jcell_pickedUpLayerInterfaceFactoryInterface (LifePickedUpLayerInterfaceFactory.jnew_0)))))

(define (LifePickedUpLayerInterfaceFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (LifePickedUpLayerInterfaceFactory.jstatic_pickedUpLayerInterfaceFactoryInterface)))))



