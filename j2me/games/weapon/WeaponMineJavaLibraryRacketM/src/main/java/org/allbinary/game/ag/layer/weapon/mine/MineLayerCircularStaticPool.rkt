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
;; package org.allbinary.game.ag.layer.weapon.mine

(require racket/class racket/lazy-require
  "../../../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../../../org/allbinary/game/layer/weapon/WeaponLayerCircularPool.rkt" (WeaponLayerCircularPool.jnew_0)])
(lazy-require ["./MineCountedPickedUpLayerInterfaceFactory.rkt" (MineCountedPickedUpLayerInterfaceFactory.jm_init_0)])
(lazy-require ["./MineLayerFactory.rkt" (MineLayerFactory.jnew_1)])
(provide (all-defined-out))

(define MineLayerCircularStaticPool%
  (class JObject%
    (super-new)))
(define (MineLayerCircularStaticPool.jclassValue) MineLayerCircularStaticPool%)

(define MineLayerCircularStaticPool.jcell_WEAPON_LAYER_CIRCULAR_STATIC_POOL 'jnone)
(define (MineLayerCircularStaticPool.jstatic_WEAPON_LAYER_CIRCULAR_STATIC_POOL)
  (when (eq? MineLayerCircularStaticPool.jcell_WEAPON_LAYER_CIRCULAR_STATIC_POOL 'jnone) (set! MineLayerCircularStaticPool.jcell_WEAPON_LAYER_CIRCULAR_STATIC_POOL (WeaponLayerCircularPool.jnew_0)))
  MineLayerCircularStaticPool.jcell_WEAPON_LAYER_CIRCULAR_STATIC_POOL)
(define (MineLayerCircularStaticPool.jsetstatic_WEAPON_LAYER_CIRCULAR_STATIC_POOL value) (set! MineLayerCircularStaticPool.jcell_WEAPON_LAYER_CIRCULAR_STATIC_POOL value))

(define (MineLayerCircularStaticPool.jnew_0)
  (define this (new MineLayerCircularStaticPool% [jclass "MineLayerCircularStaticPool"]))
  this)

(define (MineLayerCircularStaticPool.jm_init_1 _viewPositionFactoryInterface)
    (let ()
      (let/ec jreturn
        (MineCountedPickedUpLayerInterfaceFactory.jm_init_0)
        (JR.className (MineLayerCircularStaticPool.jstatic_WEAPON_LAYER_CIRCULAR_STATIC_POOL)))))

(define (MineLayerCircularStaticPool.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (MineLayerCircularStaticPool.jstatic_WEAPON_LAYER_CIRCULAR_STATIC_POOL)))))



