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
(lazy-require ["../../../../../org/allbinary/math/NoDecimalTrigTable.rkt" (NoDecimalTrigTable.jm_getInstance_0)])
(provide (all-defined-out))

(define StraightMultiProjectileWeaponPart%
  (class BasicWeaponPart%
    (super-new)
    (field [f_weaponLayerCircularStaticPool JR.null])
    (field [f_total 0])
    (field [f_noDecimalTrigTable JR.null])
    (define/override (jm_processScore_5 _allbinaryLayerManager _angle _otherAngle _weaponProperties _scoreableInterface)
    (let ([_sourceLayerInterface JR.null][_reducedWidth JR.null][_halfWidth JR.null][_x JR.null][_y JR.null][_sine JR.null][_beamX JR.null][_cosine JR.null][_beamY JR.null][_weaponLayer JR.null][_increment JR.null][_next JR.null][_index JR.null])
      (let/ec jreturn
        (set! _sourceLayerInterface (send this jm_getOwnerLayerInterface_0))
        (set! _reducedWidth (JR.idiv (JR.i32 (* (send _sourceLayerInterface jm_getWidth_0) 8)) 10))
        (set! _halfWidth (arithmetic-shift _reducedWidth (- (bitwise-and 1 31))))
        (set! _x (send (get-field f_relativeRelationship this) jm_getX_0))
        (set! _y (send (get-field f_relativeRelationship this) jm_getY_0))
        (set! _sine 0)
        (set! _beamX 0)
        (set! _cosine 0)
        (set! _beamY 0)
        (set! _weaponLayer JR.null)
        (set! _increment (JR.idiv _reducedWidth (JR.i32 (- (get-field f_total this) 1))))
        (set! _next (JR.i32 (- _halfWidth)))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index (get-field f_total this))
                (let/ec jcontinue
            (set! _sine (JR.i64 (* _next (send (get-field f_noDecimalTrigTable this) jm_sin_1 _angle))))
            (set! _beamX (JR.i32 (JR.ldiv _sine (get-field f_SCALE (get-field f_noDecimalTrigTable this)))))
            (set! _cosine (JR.i64 (* _next (send (get-field f_noDecimalTrigTable this) jm_cos_1 _angle))))
            (set! _beamY (JR.i32 (- (JR.i32 (JR.ldiv _cosine (get-field f_SCALE (get-field f_noDecimalTrigTable this)))))))
            (set! _weaponLayer (send (get-field f_weaponLayerCircularStaticPool this) jm_getInstanceWeaponLayer_8 _sourceLayerInterface (JR.i32 (+ _x _beamX)) (JR.i32 (+ _y _beamY)) 0 _angle _otherAngle _weaponProperties _scoreableInterface))
            (send _allbinaryLayerManager jm_append_1 _weaponLayer)
            (set! _next (JR.i32 (+ _next _increment))))
                (set! _index (JR.i32 (+ _index 1))) (jloop))))))))))
(define (StraightMultiProjectileWeaponPart.jclassValue) StraightMultiProjectileWeaponPart%)

(define (StraightMultiProjectileWeaponPart.jnew_7 _animationInterface _sourceLayerInterface _weaponLayerCircularStaticPool _total _weaponProperties _scoreableInterface _relativeRelationship)
  (define this (new StraightMultiProjectileWeaponPart% [jclass "StraightMultiProjectileWeaponPart"]))
    
    
    (set-field! f_noDecimalTrigTable this (NoDecimalTrigTable.jm_getInstance_0))
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_total this _total)
        (set-field! f_weaponLayerCircularStaticPool this _weaponLayerCircularStaticPool)))
  this)

(define (StraightMultiProjectileWeaponPart.jm_createStraightMultiProjectileWeaponPart_2 _animationInterface _weaponLayerCircularStaticPool)
    (let ()
      (let/ec jreturn
        (jreturn (StraightMultiProjectileWeaponPart.jnew_7 _animationInterface (AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER) _weaponLayerCircularStaticPool 2 (WeaponProperties.jstatic_NULL_WEAPON_PROPERTIES) (NoScoreable.jm_getInstance_0) (RelativeRelationship.jstatic_NULL_RELATIVE_RELATIONSHIP))))))



