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
  "./CollidableDestroyableDamageableBehavior.rkt")
(lazy-require ["../../../../../org/allbinary/game/collision/CollisionTypeFactory.rkt" (CollisionTypeFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/communication/log/ForcedLogUtil.rkt" (ForcedLogUtil.jm_log_2)])
(provide (all-defined-out))

(define CollidableCharacterNoDamageBehavior%
  (class CollidableDestroyableDamageableBehavior%
    (super-new)
    (define/override (jm_collide_2 _ownerLayer _collidableInterfaceCompositeInterface)
    (let ([_collisionTypeFactory JR.null][_collisionType JR.null][_collidableDestroyableDamageableLayer JR.null])
      (let/ec jreturn
        (set! _collisionTypeFactory (CollisionTypeFactory.jm_getInstance_0))
        (set! _collisionType (JR.className (send _collidableInterfaceCompositeInterface jm_getCollidableInferface_0)))
        (if (eq? _collisionType (get-field f_PICKUP _collisionTypeFactory))
            (begin
            (set! _collidableDestroyableDamageableLayer _ownerLayer)
            (JR.className (send _collidableDestroyableDamageableLayer jm_getPickupBehavior_0)))
            (begin
            (void))))))
    (define/override (jm_collideInterface_2 _ownerLayer _collidableInterfaceCompositeInterface)
    (let ()
      (let/ec jreturn
        (ForcedLogUtil.jm_log_2 (get-field f_NOT_IMPLEMENTED (get-field f_commonStrings this)) this))))))
(define (CollidableCharacterNoDamageBehavior.jclassValue) CollidableCharacterNoDamageBehavior%)

(define (CollidableCharacterNoDamageBehavior.jnew_1 _collidable)
  (define this (new CollidableCharacterNoDamageBehavior% [jclass "CollidableCharacterNoDamageBehavior"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)



