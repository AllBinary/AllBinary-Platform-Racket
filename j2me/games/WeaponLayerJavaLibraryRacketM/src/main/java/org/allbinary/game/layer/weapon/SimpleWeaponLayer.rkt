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
;; package org.allbinary.game.layer.weapon

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "./WeaponLayer.rkt")
(lazy-require ["../../../../../org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory.rkt" (FeaturedAnimationInterfaceFactoryInterfaceFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/animation/NullIndexedAnimationFactory.rkt" (NullIndexedAnimationFactory.jm_getFactoryInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/combat/damage/ExplosionResources.rkt" (ExplosionResources.jm_getInstance_0)])
(lazy-require ["./CollidableWeaponBehavior.rkt" (CollidableWeaponBehavior.jnew_1)])
(provide (all-defined-out))

(define SimpleWeaponLayer%
  (class WeaponLayer%
    (super-new)))
(define (SimpleWeaponLayer.jclassValue) SimpleWeaponLayer%)

(define (SimpleWeaponLayer.jnew_8 _name _remoteInfo _multiPlayerType _movement _animationInterface _destroyedAnimationInterface _rectangle _viewPosition)
  (define this (new SimpleWeaponLayer% [jclass "SimpleWeaponLayer"]))
    (let ()
      (let/ec jreturn
        (void)
        (send this jm_setCollidableInferface_1 (CollidableWeaponBehavior.jnew_1 #t))))
  this)

(define (SimpleWeaponLayer.jm_createDestroyed_0)
    (let ()
      (let/ec jreturn
        (jreturn (JR.className (send (FeaturedAnimationInterfaceFactoryInterfaceFactory.jm_getInstance_0) jm_getProcedural_1 (get-field f_THIRD_EXPLOSION_RESOURCE (ExplosionResources.jm_getInstance_0))))))))



