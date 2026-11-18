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
  "../../../../../../../allbinary_java.rkt"
  "../../../../../../../org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory.rkt"
  "../../../../../../../java/lang/Integer.rkt")
(lazy-require ["../../../../../../../org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory.rkt" (FeaturedAnimationInterfaceFactoryInterfaceFactory.jm_getInstance_0)])
(lazy-require ["../../../../../../../org/allbinary/game/combat/weapon/WeaponProperties.rkt" (WeaponProperties.jnew_5)])
(lazy-require ["../../../../../../../org/allbinary/game/layer/pickup/IconLayerFactory.rkt" (IconLayerFactory.jm_getInstance_3)])
(lazy-require ["../../../../../../../org/allbinary/game/layer/pickup/PickedUpLayerTypeFactory.rkt" (PickedUpLayerTypeFactory.jm_getInstance_0)])
(lazy-require ["../../../../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory.rkt" (SmallIntegerSingletonFactory.jm_getInstance_0)])
(lazy-require ["./MineLayerCircularStaticPool.rkt" (MineLayerCircularStaticPool.jm_getInstance_0)])
(lazy-require ["./MineWeaponResources.rkt" (MineWeaponResources.jm_getInstance_0)])
(provide (all-defined-out))

(define MineCountedPickedUpLayerInterfaceFactory%
  (class CountedPickedUpLayerInterfaceFactory%
    (super-new)
    (field [f_weaponLayerCircularStaticPool JR.null])
    (field [f_weaponProperties JR.null])
    (field [f_smallIntegerSingletonFactory JR.null])
    (define/override (jm_getTotal_0)
    (let ()
      (let/ec jreturn
        (jreturn 3))))
    (define/override (jm_getNextInstance_4 _hashtable _x _y _z)
    (let ([_sourceLayerInterface JR.null][_angle JR.null][_scoreableInterface JR.null])
      (let/ec jreturn
        (set! _sourceLayerInterface (send _hashtable jm_get_1 (send (get-field f_smallIntegerSingletonFactory this) jm_getAt_1 0)))
        (set! _angle (send _hashtable jm_get_1 (send (get-field f_smallIntegerSingletonFactory this) jm_getAt_1 1)))
        (set! _scoreableInterface _sourceLayerInterface)
        (jreturn (send (get-field f_weaponLayerCircularStaticPool this) jm_getInstanceWeaponLayer_8 _sourceLayerInterface _x _y _z (send _angle jm_intValue_0) 0 (get-field f_weaponProperties this) _scoreableInterface)))))))
(define (MineCountedPickedUpLayerInterfaceFactory.jclassValue) MineCountedPickedUpLayerInterfaceFactory%)

(define MineCountedPickedUpLayerInterfaceFactory.jcell_pickedUpLayerInterfaceFactoryInterface 'jnone)
(define (MineCountedPickedUpLayerInterfaceFactory.jstatic_pickedUpLayerInterfaceFactoryInterface)
  (when (eq? MineCountedPickedUpLayerInterfaceFactory.jcell_pickedUpLayerInterfaceFactoryInterface 'jnone) (set! MineCountedPickedUpLayerInterfaceFactory.jcell_pickedUpLayerInterfaceFactoryInterface (CountedPickedUpLayerInterfaceFactory.jstatic_NULL_COUNTED_PICKUP_LAYER_FACTORY)))
  MineCountedPickedUpLayerInterfaceFactory.jcell_pickedUpLayerInterfaceFactoryInterface)
(define (MineCountedPickedUpLayerInterfaceFactory.jsetstatic_pickedUpLayerInterfaceFactoryInterface value) (set! MineCountedPickedUpLayerInterfaceFactory.jcell_pickedUpLayerInterfaceFactoryInterface value))

(define (MineCountedPickedUpLayerInterfaceFactory.jnew_0)
  (define this (new MineCountedPickedUpLayerInterfaceFactory% [jclass "MineCountedPickedUpLayerInterfaceFactory"]))
    (set-field! f_weaponLayerCircularStaticPool this (MineLayerCircularStaticPool.jm_getInstance_0))
    (set-field! f_weaponProperties this (WeaponProperties.jnew_5 (JR.i64 (- 1)) (JR.i64 (- 1)) 0 8000 (JR.i16 10)))
    (set-field! f_smallIntegerSingletonFactory this (SmallIntegerSingletonFactory.jm_getInstance_0))
    (let ()
      (let/ec jreturn
        (void)))
  this)

(define (MineCountedPickedUpLayerInterfaceFactory.jm_init_0)
    (let ()
      (let/ec jreturn
        (set! MineCountedPickedUpLayerInterfaceFactory.jcell_pickedUpLayerInterfaceFactoryInterface (MineCountedPickedUpLayerInterfaceFactory.jnew_0)))))

(define (MineCountedPickedUpLayerInterfaceFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (MineCountedPickedUpLayerInterfaceFactory.jstatic_pickedUpLayerInterfaceFactoryInterface)))))



