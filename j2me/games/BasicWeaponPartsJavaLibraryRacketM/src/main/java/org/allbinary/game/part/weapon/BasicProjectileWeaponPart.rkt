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
;; package org.allbinary.game.part.weapon

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "./BasicWeaponPart.rkt")
(lazy-require ["../../../../../org/allbinary/game/combat/weapon/WeaponProperties.rkt" (WeaponProperties.jstatic_NULL_WEAPON_PROPERTIES)])
(lazy-require ["../../../../../org/allbinary/game/score/NoScoreable.rkt" (NoScoreable.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/RelativeRelationship.rkt" (RelativeRelationship.jstatic_NULL_RELATIVE_RELATIONSHIP)])
(lazy-require ["../../../../../org/allbinary/layer/AllBinaryLayer.rkt" (AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER)])
(provide (all-defined-out))

(define BasicProjectileWeaponPart%
  (class BasicWeaponPart%
    (super-new)
    (field [f_weaponLayerCircularStaticPool JR.null])
    (define/override (jm_processScore_5 _allbinaryLayerManager _angle _otherAngle _weaponProperties _scoreableInterface)
    (let ([_weaponLayer JR.null])
      (let/ec jreturn
        (set! _weaponLayer (send (get-field f_weaponLayerCircularStaticPool this) jm_getInstanceWeaponLayer_8 (send this jm_getOwnerLayerInterface_0) (send (get-field f_relativeRelationship this) jm_getX_0) (send (get-field f_relativeRelationship this) jm_getY_0) (send (get-field f_relativeRelationship this) jm_getZ_0) _angle _otherAngle _weaponProperties _scoreableInterface))
        (send _allbinaryLayerManager jm_append_1 _weaponLayer))))))
(define (BasicProjectileWeaponPart.jclassValue) BasicProjectileWeaponPart%)

(define (BasicProjectileWeaponPart.jnew_6 _animationInterface _sourceLayerInterface _weaponLayerCircularStaticPool _weaponProperties _scoreableInterface _relativeRelationship)
  (define this (new BasicProjectileWeaponPart% [jclass "BasicProjectileWeaponPart"]))
    
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_weaponLayerCircularStaticPool this _weaponLayerCircularStaticPool)))
  this)

(define (BasicProjectileWeaponPart.jm_createBasicProjectileWeaponPart_2 _animationInterface _weaponLayerCircularStaticPool)
    (let ()
      (let/ec jreturn
        (jreturn (BasicProjectileWeaponPart.jnew_6 _animationInterface (AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER) _weaponLayerCircularStaticPool (WeaponProperties.jstatic_NULL_WEAPON_PROPERTIES) (NoScoreable.jm_getInstance_0) (RelativeRelationship.jstatic_NULL_RELATIVE_RELATIONSHIP))))))



