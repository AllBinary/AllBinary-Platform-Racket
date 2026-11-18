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
  "../../../../../org/allbinary/game/layer/special/CollidableDestroyableDamageableBehavior.rkt")
(lazy-require ["../../../../../org/allbinary/game/collision/CollidableHelperFactory.rkt" (CollidableHelperFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/collision/CollisionTypeFactory.rkt" (CollisionTypeFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define CollidableDamageWeaponBehavior%
  (class CollidableDestroyableDamageableBehavior%
    (super-new)
    (field [f_collided #f])
    (field [f_collisionHelper JR.null])
    (define/public (jm_init_1 _sourceLayerInterface)
    (let ()
      (let/ec jreturn
        (send this jm_setCollided_1 #f)
        (send (get-field f_collisionHelper this) jm_setOwnerLayerInterface_1 _sourceLayerInterface))))
    (define/override (jm_isCollision_2 _ownerLayer _collisionLayer)
    (let ()
      (let/ec jreturn
        (when (send (get-field f_collisionHelper this) jm_isCollidable_1 _collisionLayer)
            (begin
            (when (not (eq? (vector-ref (send _ownerLayer jm_getGroupInterface_0) 0) (vector-ref (send _collisionLayer jm_getGroupInterface_0) 0)))
                (begin
                (jreturn (super jm_isCollision_2 _ownerLayer _collisionLayer))))))
        (jreturn #f))))
    (define/override (jm_collide_2 _ownerLayer _collisionLayer)
    (let ()
      (let/ec jreturn
        (super jm_collide_2 _ownerLayer _collisionLayer)
        (set-field! f_collided this #t))))
    (define/override (jm_isCollisionInterface_2 _ownerLayer _collidableInterfaceCompositeInterface)
    (let ([_layerInterface JR.null])
      (let/ec jreturn
        (when (send (get-field f_collisionHelper this) jm_isCollidable_1 _collidableInterfaceCompositeInterface)
            (begin
            (set! _layerInterface _collidableInterfaceCompositeInterface)
            (when (not (eq? (vector-ref (send _ownerLayer jm_getGroupInterface_0) 0) (vector-ref (send _layerInterface jm_getGroupInterface_0) 0)))
                (begin
                (when (JR.className (get-field f_layerCollisionUtil this))
                    (begin
                    (jreturn #t)))))))
        (jreturn #f))))
    (define/override (jm_collideInterface_2 _ownerLayer _collidableInterfaceCompositeInterface)
    (let ()
      (let/ec jreturn
        (JR.className (get-field f_damageUtil this))
        (set-field! f_collided this #t))))
    (define/override (jm_getCollisionTypeWith_1 _layerInterface)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_COLLISION (CollisionTypeFactory.jm_getInstance_0))))))
    (define/public (jm_isCollided_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_collided this)))))
    (define/public (jm_setCollided_1 _collided)
    (let ()
      (let/ec jreturn
        (set-field! f_collided this _collided))))))
(define (CollidableDamageWeaponBehavior.jclassValue) CollidableDamageWeaponBehavior%)

(define (CollidableDamageWeaponBehavior.jnew_1 _collidable)
  (define this (new CollidableDamageWeaponBehavior% [jclass "CollidableDamageWeaponBehavior"]))
    
    
    (let ()
      (let/ec jreturn
        (void)
        (send this jm_setCollided_1 #f)
        (send this jm_setCollidable_1 #t)
        (set-field! f_collisionHelper this (CollidableHelperFactory.jm_getInstance_0))))
  this)



