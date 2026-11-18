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
;; package org.allbinary.game.ag.layer.pickup.points

(require racket/class racket/lazy-require
  "../../../../../../../allbinary_java.rkt"
  "../../../../../../../org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactory.rkt"
  "../../../../../../../org/allbinary/game/layer/pickup/PickupProcessorInterface.rkt")
(lazy-require ["../../../../../../../org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory.rkt" (FeaturedAnimationInterfaceFactoryInterfaceFactory.jm_getInstance_0)])
(lazy-require ["../../../../../../../org/allbinary/game/configuration/GameConfigurationUtil.rkt" (GameConfigurationUtil.jm_getInstance_0)])
(lazy-require ["../../../../../../../org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory.rkt" (CountedPickedUpLayerInterfaceFactory.jstatic_NULL_COUNTED_PICKUP_LAYER_FACTORY)])
(lazy-require ["../../../../../../../org/allbinary/game/layer/pickup/IconLayerFactory.rkt" (IconLayerFactory.jm_getInstance_3)])
(lazy-require ["../../../../../../../org/allbinary/game/layer/pickup/PickedUpLayerTypeFactory.rkt" (PickedUpLayerTypeFactory.jm_getInstance_0)])
(lazy-require ["./PointsLayerCircularStaticPool.rkt" (PointsLayerCircularStaticPool.jnew_2)])
(lazy-require ["./PointsLayerFactory.rkt" (PointsLayerFactory.jnew_1)])
(lazy-require ["./PointsResources.rkt" (PointsResources.jm_getInstance_0)])
(provide (all-defined-out))

(define Points20kPickedUpLayerInterfaceFactory%
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
(define (Points20kPickedUpLayerInterfaceFactory.jclassValue) Points20kPickedUpLayerInterfaceFactory%)

(define Points20kPickedUpLayerInterfaceFactory.jcell_pickedUpLayerInterfaceFactoryInterface 'jnone)
(define (Points20kPickedUpLayerInterfaceFactory.jstatic_pickedUpLayerInterfaceFactoryInterface)
  (when (eq? Points20kPickedUpLayerInterfaceFactory.jcell_pickedUpLayerInterfaceFactoryInterface 'jnone) (set! Points20kPickedUpLayerInterfaceFactory.jcell_pickedUpLayerInterfaceFactoryInterface (CountedPickedUpLayerInterfaceFactory.jstatic_NULL_COUNTED_PICKUP_LAYER_FACTORY)))
  Points20kPickedUpLayerInterfaceFactory.jcell_pickedUpLayerInterfaceFactoryInterface)
(define (Points20kPickedUpLayerInterfaceFactory.jsetstatic_pickedUpLayerInterfaceFactoryInterface value) (set! Points20kPickedUpLayerInterfaceFactory.jcell_pickedUpLayerInterfaceFactoryInterface value))

(define (Points20kPickedUpLayerInterfaceFactory.jnew_0)
  (define this (new Points20kPickedUpLayerInterfaceFactory% [jclass "Points20kPickedUpLayerInterfaceFactory"]))
    (set-field! f_pool this (PointsLayerCircularStaticPool.jnew_2 (PointsLayerFactory.jnew_1 (JR.i32 (* (send (GameConfigurationUtil.jm_getInstance_0) jm_getCompetitionValue_0) 20000))) 1))
    (let ()
      (let/ec jreturn
        (void)))
  this)

(define (Points20kPickedUpLayerInterfaceFactory.jm_init_0)
    (let ()
      (let/ec jreturn
        (set! Points20kPickedUpLayerInterfaceFactory.jcell_pickedUpLayerInterfaceFactoryInterface (Points20kPickedUpLayerInterfaceFactory.jnew_0)))))

(define (Points20kPickedUpLayerInterfaceFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (Points20kPickedUpLayerInterfaceFactory.jstatic_pickedUpLayerInterfaceFactoryInterface)))))



