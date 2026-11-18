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
  "../../../../../org/allbinary/game/part/PartInterface.rkt"
  "./SalvoInterface.rkt")
(lazy-require ["../../../../../org/allbinary/animation/NullAnimationFactory.rkt" (NullAnimationFactory.jm_getFactoryInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/combat/weapon/WeaponProperties.rkt" (WeaponProperties.jstatic_NULL_WEAPON_PROPERTIES)])
(lazy-require ["../../../../../org/allbinary/game/score/NoScoreable.rkt" (NoScoreable.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/RelativeRelationship.rkt" (RelativeRelationship.jstatic_NULL_RELATIVE_RELATIONSHIP)])
(lazy-require ["../../../../../org/allbinary/layer/AllBinaryLayer.rkt" (AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER)])
(lazy-require ["../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(provide (all-defined-out))

(define BasicWeaponPart%
  (class JObject%
    (super-new)
    (field [f_animationInterface JR.null])
    (field [f_ownerLayerInterface JR.null])
    (field [f_weaponProperties JR.null])
    (field [f_scoreableInterface JR.null])
    (field [f_relativeRelationship JR.null])
    (define/public (jm_init_4 _sourceLayerInterface _weaponProperties _scoreableInterface _relativeRelationship)
    (let ()
      (let/ec jreturn
        (send this jm_setOwnerLayerInterface_1 _sourceLayerInterface)
        (send this jm_setWeaponProperties_1 _weaponProperties)
        (set-field! f_scoreableInterface this _scoreableInterface)
        (set-field! f_relativeRelationship this _relativeRelationship))))
    (define/public (jm_process_3 _allbinaryLayerManager _angle _otherAngle)
    (let ()
      (let/ec jreturn
        (send this jm_processScore_5 _allbinaryLayerManager _angle _otherAngle (send this jm_getWeaponProperties_0) (get-field f_scoreableInterface this)))))
    (define/public (jm_processScore_5 _allbinaryLayerManager _angle _otherAngle _weaponProperties _scoreableInterface)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "Exception" (get-field f_NOT_IMPLEMENTED (CommonStrings.jm_getInstance_0)))))))
    (define/public (jm_getOwnerLayerInterface_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_ownerLayerInterface this)))))
    (define/public (jm_setOwnerLayerInterface_1 _ownerLayerInterface)
    (let ()
      (let/ec jreturn
        (set-field! f_ownerLayerInterface this _ownerLayerInterface))))
    (define/public (jm_getAnimationInterface_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_animationInterface this)))))
    (define/public (jm_setAnimationInterface_1 _animationInterface)
    (let ()
      (let/ec jreturn
        (set-field! f_animationInterface this _animationInterface))))
    (define/public (jm_paint_1 _graphics)
    (let ([_viewPosition JR.null][_viewX JR.null][_viewY JR.null])
      (let/ec jreturn
        (set! _viewPosition (send (send this jm_getOwnerLayerInterface_0) jm_getViewPosition_0))
        (set! _viewX (send _viewPosition jm_getX_0))
        (set! _viewY (send _viewPosition jm_getY_0))
        (send (get-field f_animationInterface this) jm_paintXY_3 _graphics _viewX _viewY))))
    (define/public (jm_paintThreed_1 _graphics)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_getWeaponProperties_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_weaponProperties this)))))
    (define/public (jm_setWeaponProperties_1 _weaponProperties)
    (let ()
      (let/ec jreturn
        (set-field! f_weaponProperties this _weaponProperties))))))
(define (BasicWeaponPart.jclassValue) BasicWeaponPart%)

(define BasicWeaponPart.jcell_NULL_BASIC_WEAPON_PART 'jnone)
(define (BasicWeaponPart.jstatic_NULL_BASIC_WEAPON_PART)
  (when (eq? BasicWeaponPart.jcell_NULL_BASIC_WEAPON_PART 'jnone) (set! BasicWeaponPart.jcell_NULL_BASIC_WEAPON_PART (BasicWeaponPart.jm_createBasicWeaponPart_1 (JR.className (NullAnimationFactory.jm_getFactoryInstance_0)))))
  BasicWeaponPart.jcell_NULL_BASIC_WEAPON_PART)
(define (BasicWeaponPart.jsetstatic_NULL_BASIC_WEAPON_PART value) (set! BasicWeaponPart.jcell_NULL_BASIC_WEAPON_PART value))

(define (BasicWeaponPart.jnew_5 _animationInterface _sourceLayerInterface _weaponProperties _scoreableInterface _relativeRelationship)
  (define this (new BasicWeaponPart% [jclass "BasicWeaponPart"]))
    (set-field! f_animationInterface this (JR.className (NullAnimationFactory.jm_getFactoryInstance_0)))
    (set-field! f_ownerLayerInterface this (AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER))
    (set-field! f_weaponProperties this (WeaponProperties.jstatic_NULL_WEAPON_PROPERTIES))
    (set-field! f_scoreableInterface this (NoScoreable.jm_getInstance_0))
    (set-field! f_relativeRelationship this (RelativeRelationship.jstatic_NULL_RELATIVE_RELATIONSHIP))
    (let ()
      (let/ec jreturn
        (send this jm_init_4 _sourceLayerInterface _weaponProperties _scoreableInterface _relativeRelationship)
        (send this jm_setAnimationInterface_1 _animationInterface)))
  this)

(define (BasicWeaponPart.jm_createBasicWeaponPart_1 _animationInterface)
    (let ()
      (let/ec jreturn
        (jreturn (BasicWeaponPart.jnew_5 _animationInterface (AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER) (WeaponProperties.jstatic_NULL_WEAPON_PROPERTIES) (NoScoreable.jm_getInstance_0) (RelativeRelationship.jstatic_NULL_RELATIVE_RELATIONSHIP))))))



