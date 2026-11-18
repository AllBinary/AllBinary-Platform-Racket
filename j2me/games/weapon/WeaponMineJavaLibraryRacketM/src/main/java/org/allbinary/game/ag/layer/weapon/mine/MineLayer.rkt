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
  "../../../../../../../org/allbinary/game/layer/weapon/SimpleWeaponLayer.rkt")
(lazy-require ["../../../../../../../org/allbinary/ag/weapon/media/audio/DropWeaponSound.rkt" (DropWeaponSound.jm_getInstance_0)])
(lazy-require ["../../../../../../../org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory.rkt" (FeaturedAnimationInterfaceFactoryInterfaceFactory.jm_getInstance_0)])
(lazy-require ["../../../../../../../org/allbinary/game/multiplayer/layer/RemoteInfo.rkt" (RemoteInfo.jstatic_REMOTE_INFO)])
(lazy-require ["../../../../../../../org/allbinary/graphics/PointFactory.rkt" (PointFactory.jm_getInstance_0)])
(lazy-require ["../../../../../../../org/allbinary/graphics/Rectangle.rkt" (Rectangle.jnew_3)])
(lazy-require ["../../../../../../../org/allbinary/media/audio/SecondaryPlayerQueueFactory.rkt" (SecondaryPlayerQueueFactory.jm_getInstance_0)])
(lazy-require ["../../../../../../../org/allbinary/physics/movement/NoMovementFactory.rkt" (NoMovementFactory.jm_getInstance_0)])
(lazy-require ["../../../../../../../org/allbinary/view/event/ViewPositionEventHandler.rkt" (ViewPositionEventHandler.jm_getInstance_0)])
(lazy-require ["./MineWeaponResources.rkt" (MineWeaponResources.jm_getInstance_0)])
(provide (all-defined-out))

(define MineLayer%
  (class SimpleWeaponLayer%
    (super-new)
    (field [f_viewPositionEventHandler JR.null])
    (define/override (jm_initXYZ_3 _x _y _z)
    (let ()
      (let/ec jreturn
        (send this jm_setPosition_3 (JR.i32 (+ _x 5)) (JR.i32 (+ _y 5)) _z)
        (send (get-field f_viewPositionEventHandler this) jm_addListener_1 this)
        (send (SecondaryPlayerQueueFactory.jm_getInstance_0) jm_add_1 (DropWeaponSound.jm_getInstance_0)))))
    (define/override (jm_damage_2 _damage _damageType)
    (let ()
      (let/ec jreturn
        (set-field! f_totalDamage this (JR.i32 (+ (send this jm_getInitDamage_0) 1))))))
    (define/override (jm_getDamage_1 _damageType)
    (let ()
      (let/ec jreturn
        (super jm_getDamage_1 _damageType)
        (jreturn (send this jm_getInitDamage_0)))))
    (define/override (jm_setDestroyed_1 _destroyed)
    (let ()
      (let/ec jreturn
        (super jm_setDestroyed_1 _destroyed)
        (when (send this jm_isDestroyed_0)
            (begin
            (send (get-field f_viewPositionEventHandler this) jm_removeListener_1 this))))))))
(define (MineLayer.jclassValue) MineLayer%)

(define MineLayer.jcell_NAME 'jnone)
(define (MineLayer.jstatic_NAME)
  (when (eq? MineLayer.jcell_NAME 'jnone) (set! MineLayer.jcell_NAME "MineLayer"))
  MineLayer.jcell_NAME)
(define (MineLayer.jsetstatic_NAME value) (set! MineLayer.jcell_NAME value))

(define (MineLayer.jnew_1 _viewPosition)
  (define this (new MineLayer% [jclass "MineLayer"]))
    (set-field! f_viewPositionEventHandler this (ViewPositionEventHandler.jm_getInstance_0))
    (let ()
      (let/ec jreturn
        (void)))
  this)



