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
(lazy-require ["../../../../../org/allbinary/math/AngleFactory.rkt" (AngleFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define ArcedMultiBeamWeaponPart%
  (class BasicWeaponPart%
    (super-new)
    (field [f_weaponLayerCircularStaticPool JR.null])
    (field [f_total 0])
    (field [f_TOTAL_ANGLE 0])
    (define/override (jm_processScore_5 _allbinaryLayerManager _angle _otherAngle _weaponProperties _scoreableInterface)
    (let ([_increment JR.null][_minAngle JR.null][_next JR.null][_weaponLayer JR.null][_index JR.null])
      (let/ec jreturn
        (set! _increment (JR.i16 (JR.idiv (JR.i32 (- (get-field f_total this) 1)) (get-field f_TOTAL_ANGLE this))))
        (set! _minAngle (JR.i16 (JR.i32 (- _angle (arithmetic-shift (JR.i32 (* _increment (get-field f_total this))) (- (bitwise-and 1 31)))))))
        (set! _next 0)
        (set! _weaponLayer JR.null)
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index (get-field f_total this))
                (let/ec jcontinue
            (set! _weaponLayer (send (get-field f_weaponLayerCircularStaticPool this) jm_getInstanceWeaponLayer_8 (send this jm_getOwnerLayerInterface_0) (send (get-field f_relativeRelationship this) jm_getX_0) (send (get-field f_relativeRelationship this) jm_getY_0) 0 (JR.i32 (+ _minAngle _increment)) _otherAngle _weaponProperties _scoreableInterface))
            (send _allbinaryLayerManager jm_append_1 _weaponLayer)
            (set! _next (JR.i32 (+ _next _increment))))
                (set! _index (JR.i32 (+ _index 1))) (jloop))))))))))
(define (ArcedMultiBeamWeaponPart.jclassValue) ArcedMultiBeamWeaponPart%)

(define (ArcedMultiBeamWeaponPart.jnew_7 _animationInterface _sourceLayerInterface _weaponLayerCircularStaticPool _total _weaponProperties _scoreableInterface _relativeRelationship)
  (define this (new ArcedMultiBeamWeaponPart% [jclass "ArcedMultiBeamWeaponPart"]))
    
    
    (set-field! f_TOTAL_ANGLE this (get-field f_TOTAL_ANGLE (AngleFactory.jm_getInstance_0)))
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_total this _total)
        (set-field! f_weaponLayerCircularStaticPool this _weaponLayerCircularStaticPool)))
  this)



