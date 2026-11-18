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
;; package org.allbinary.game.layer.special

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../org/allbinary/game/collision/CollidableBaseBehavior.rkt")
(lazy-require ["../../../../../org/allbinary/game/combat/damage/DamageUtil.rkt" (DamageUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/communication/log/ForcedLogUtil.rkt" (ForcedLogUtil.jm_log_2)])
(provide (all-defined-out))

(define CollidableDestroyableDamageableBehavior%
  (class CollidableBaseBehavior%
    (super-new)
    (field [f_damageUtil JR.null])
    (define/override (jm_isCollision_2 _ownerLayer _collisionLayer)
    (let ()
      (let/ec jreturn
        (when (not (eq? (vector-ref (send _ownerLayer jm_getGroupInterface_0) 0) (vector-ref (send _collisionLayer jm_getGroupInterface_0) 0)))
            (begin
            (jreturn (super jm_isCollision_2 _ownerLayer _collisionLayer))))
        (jreturn #f))))
    (define/override (jm_collide_2 _ownerLayer _collidableInterfaceCompositeInterface)
    (let ([_ownerCollidableDestroyableDamageableLayer JR.null][_collidableDestroyableDamageableLayer JR.null])
      (let/ec jreturn
        (set! _ownerCollidableDestroyableDamageableLayer _ownerLayer)
        (set! _collidableDestroyableDamageableLayer _collidableInterfaceCompositeInterface)
        (send _ownerCollidableDestroyableDamageableLayer jm_damage_2 (send _collidableDestroyableDamageableLayer jm_getDamage_1 0) 0))))
    (define/override (jm_isCollisionInterface_2 _ownerLayer _collidableInterfaceCompositeInterface)
    (let ()
      (let/ec jreturn
        (ForcedLogUtil.jm_log_2 "No Longer Used" this)
        (jreturn #f))))
    (define/override (jm_collideInterface_2 _ownerLayer _collidableInterfaceCompositeInterface)
    (let ()
      (let/ec jreturn
        (ForcedLogUtil.jm_log_2 "No Longer Used" this))))))
(define (CollidableDestroyableDamageableBehavior.jclassValue) CollidableDestroyableDamageableBehavior%)

(define (CollidableDestroyableDamageableBehavior.jnew_1 _collidable)
  (define this (new CollidableDestroyableDamageableBehavior% [jclass "CollidableDestroyableDamageableBehavior"]))
    (set-field! f_damageUtil this (DamageUtil.jm_getInstance_0))
    (let ()
      (let/ec jreturn
        (void)))
  this)



