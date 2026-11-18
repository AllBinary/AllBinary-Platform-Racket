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
  "../../../../../org/allbinary/game/multiplayer/layer/MultiPlayerGameLayer.rkt"
  "../../../../../org/allbinary/game/tick/TickableInterface.rkt")
(lazy-require ["../../../../../org/allbinary/animation/NullAnimationFactory.rkt" (NullAnimationFactory.jm_getFactoryInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/combat/destroy/DestroyedLayerProcessor.rkt" (DestroyedLayerProcessor.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/combat/weapon/WeaponProperties.rkt" (WeaponProperties.jstatic_NULL_WEAPON_PROPERTIES)])
(lazy-require ["../../../../../org/allbinary/game/configuration/GameConfigurationUtil.rkt" (GameConfigurationUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/identification/BasicGroupFactory.rkt" (BasicGroupFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/score/NoScoreable.rkt" (NoScoreable.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/layer/AllBinaryLayer.rkt" (AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER)])
(lazy-require ["./CollidableWeaponBehavior.rkt" (CollidableWeaponBehavior.jm_getNullInstance_0)])
(provide (all-defined-out))

(define WeaponLayer%
  (class MultiPlayerGameLayer%
    (super-new)
    (field [f_animationInterface JR.null])
    (field [f_initAnimationInterface JR.null])
    (field [f_destroyedAnimationInterface JR.null])
    (field [f_sourceLayerInterface JR.null])
    (field [f_totalDamage 0])
    (field [f_initDamage 0])
    (field [f_destroyed #f])
    (field [f_scoreableInterface JR.null])
    (field [f_movement JR.null])
    (field [f_weaponProperties JR.null])
    (field [f_multiPlayerType 0])
    (field [f_collidableWeaponBehavior JR.null])
    (define/override (jm_setCollidableInferface_1 _collidableInferface)
    (let ()
      (let/ec jreturn
        (super jm_setCollidableInferface_1 _collidableInferface)
        (set-field! f_collidableWeaponBehavior this (send this jm_getCollidableInferface_0)))))
    (define/public (jm_initXYZ_3 _x _y _z)
    (let ()
      (let/ec jreturn
        (set-field! f_x this _x)
        (set-field! f_y this _y)
        (set-field! f_z this _z))))
    (define/public (jm_init_5 _sourceLayerInterface _angle _otherAngle _weaponProperties _scoreable)
    (let ()
      (let/ec jreturn
        (send this jm_setWeaponPropertiesP_1 _weaponProperties)
        (send this jm_setReadyForExplosion_1 #f)
        (send this jm_setAnimationInterface_1 (send this jm_getInitAnimationInterfaceP_0))
        (send this jm_setOwnerLayerInterface_1 _sourceLayerInterface)
        (send (get-field f_collidableWeaponBehavior this) jm_init_1 _sourceLayerInterface)
        (send this jm_setGroupInterfaces_0)
        (when (not (JR.null? _scoreable))
            (begin
            (set-field! f_scoreableInterface this _scoreable)))
        (set-field! f_totalDamage this 0)
        (set-field! f_initDamage this (send _weaponProperties jm_getDamage_0))
        (send this jm_setDestroyed_1 #f)
        (send (get-field f_movement this) jm_init_3 (send _weaponProperties jm_getSpeed_0) _angle _otherAngle))))
    (define/public (jm_setGroupInterfaces_0)
    (let ([_basicGroupFactory JR.null])
      (let/ec jreturn
        (set! _basicGroupFactory (BasicGroupFactory.jm_getInstance_0))
        (if (eq? (vector-ref (send (get-field f_sourceLayerInterface this) jm_getGroupInterface_0) 0) (get-field f_ENEMY _basicGroupFactory))
            (begin
            (send this jm_setGroupInterface_1 (get-field f_ENEMY_ARRAY _basicGroupFactory)))
            (begin
            (send this jm_setGroupInterface_1 (send (get-field f_sourceLayerInterface this) jm_getGroupInterface_0)))))))
    (define/override (jm_processTick_1 _allBinaryLayerManager)
    (let ([_collidableWeaponBehavior JR.null][_indexedAnimationInterface JR.null][_currentFrame JR.null])
      (let/ec jreturn
        (when (and (send this jm_isExhausted_0) (not (send this jm_isDestroyed_0)))
            (begin
            (if (send this jm_isReadyForExplosion_0)
                (begin
                (set! _indexedAnimationInterface (send this jm_getAnimationInterface_0))
                (set! _currentFrame (send _indexedAnimationInterface jm_getFrame_0))
                (if (< _currentFrame (JR.i32 (- (send _indexedAnimationInterface jm_getAnimationSize_0) 1)))
                    (begin
                    (send _indexedAnimationInterface jm_nextFrame_0))
                    (begin
                    (send this jm_setDestroyed_1 #t))))
                (begin
                (set! _collidableWeaponBehavior (send this jm_getCollidableInferface_0))
                (if (send _collidableWeaponBehavior jm_isCollided_0)
                    (begin
                    (send this jm_setAnimationInterface_1 (get-field f_destroyedAnimationInterface this))
                    (send (send this jm_getMovement_0) jm_stop_0)
                    (send this jm_setReadyForExplosion_1 #t))
                    (begin
                    (send this jm_setDestroyed_1 #t)))))))
        (send (get-field f_movement this) jm_process_1 this)
        (set-field! f_totalDamage this (JR.i32 (+ (get-field f_totalDamage this) (send (get-field f_weaponProperties this) jm_getDissipation_0)))))))
    (define/override (jm_isDestroyed_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_destroyed this)))))
    (define/override (jm_damage_2 _damage _damageType)
    (let ()
      (let/ec jreturn
        (set-field! f_totalDamage this (JR.i32 (+ (get-field f_totalDamage this) (JR.i32 (* _damage _damage))))))))
    (define/public (jm_givePoints_1 _total)
    (let ()
      (let/ec jreturn
        (send (get-field f_scoreableInterface this) jm_addPoints_1 (JR.i32 (* (send (GameConfigurationUtil.jm_getInstance_0) jm_getCompetitionValue_0) _total))))))
    (define/public (jm_isExhausted_0)
    (let ()
      (let/ec jreturn
        (if (or (> (get-field f_totalDamage this) (send this jm_getInitDamage_0)) (< (get-field f_totalDamage this) 0))
            (begin
            (jreturn #t))
            (begin
            (jreturn #f))))))
    (define/override (jm_getDamage_1 _damageType)
    (let ([_total JR.null])
      (let/ec jreturn
        (when (not (send this jm_isExhausted_0))
            (begin
            (set! _total (JR.i32 (- (send this jm_getInitDamage_0) (get-field f_totalDamage this))))
            (send this jm_givePoints_1 _total)
            (jreturn _total)))
        (jreturn 0))))
    (define/public (jm_setDestroyed_1 _destroyed)
    (let ()
      (let/ec jreturn
        (set-field! f_destroyed this _destroyed)
        (when (send this jm_isDestroyed_0)
            (begin
            (set-field! f_scoreableInterface this (NoScoreable.jm_getInstance_0))
            (send (DestroyedLayerProcessor.jm_getInstance_0) jm_add_1 this))))))
    (define/public (jm_getInitDamage_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_initDamage this)))))
    (define/public (jm_setAnimationInterface_1 _animationInterface)
    (let ()
      (let/ec jreturn
        (set-field! f_animationInterface this _animationInterface))))
    (define/public (jm_getAnimationInterface_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_animationInterface this)))))
    (define/public (jm_getInitAnimationInterfaceP_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_initAnimationInterface this)))))
    (define/public (jm_setInitAnimationInterfaceP_1 _initAnimationInterface)
    (let ()
      (let/ec jreturn
        (set-field! f_initAnimationInterface this _initAnimationInterface))))
    (define/public (jm_getDestroyedAnimationInterface_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_destroyedAnimationInterface this)))))
    (define/public (jm_getOwnerLayerInterface_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_sourceLayerInterface this)))))
    (define/public (jm_setOwnerLayerInterface_1 _sourceLayerInterface)
    (let ()
      (let/ec jreturn
        (set-field! f_sourceLayerInterface this _sourceLayerInterface))))
    (define/override (jm_paint_1 _graphics)
    (let ([_viewPosition JR.null])
      (let/ec jreturn
        (set! _viewPosition (send this jm_getViewPosition_0))
        (send (get-field f_animationInterface this) jm_paintXY_3 _graphics (JR.i32 (- (send _viewPosition jm_getX_0) (send this jm_getHalfWidth_0))) (JR.i32 (- (send _viewPosition jm_getY_0) (send this jm_getHalfHeight_0)))))))
    (define/override (jm_paintThreed_1 _graphics)
    (let ([_viewPosition JR.null])
      (let/ec jreturn
        (set! _viewPosition (send this jm_getViewPosition_0))
        (send (get-field f_animationInterface this) jm_paintThreedXYZ_4 _graphics (JR.i32 (- (send _viewPosition jm_getX_0) (send this jm_getHalfWidth_0))) (JR.i32 (- (send _viewPosition jm_getY_0) (send this jm_getHalfHeight_0))) (JR.i32 (- (send _viewPosition jm_getZ_0) (send this jm_getHalfDepth_0)))))))
    (define/public (jm_getMovement_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_movement this)))))
    (define/public (jm_setMovement_1 _movement)
    (let ()
      (let/ec jreturn
        (set-field! f_movement this _movement))))
    (define/override (jm_getType_0)
    (let ()
      (let/ec jreturn
        (jreturn (WeaponLayer.jm_getStaticType_0)))))
    (define/override (jm_getMultiPlayerType_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_multiPlayerType this)))))
    (define/public (jm_setWeaponPropertiesP_1 _weaponProperties)
    (let ()
      (let/ec jreturn
        (set-field! f_weaponProperties this _weaponProperties))))
    (define/public (jm_getWeaponPropertiesP_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_weaponProperties this)))))
    (define/override (jm_implmentsTickableInterface_0)
    (let ()
      (let/ec jreturn
        (jreturn #t))))
    (define/override (jm_set_1 _gl)
    (let ()
      (let/ec jreturn
        (send (get-field f_initAnimationInterface this) jm_set_1 _gl))))))
(define (WeaponLayer.jclassValue) WeaponLayer%)

(define (WeaponLayer.jnew_8 _name _remoteInfo _multiPlayerType _movement _animationInterface _destroyedAnimationInterface _rectangle _viewPosition)
  (define this (new WeaponLayer% [jclass "WeaponLayer"]))
    (set-field! f_animationInterface this (JR.className (NullAnimationFactory.jm_getFactoryInstance_0)))
    
    
    (set-field! f_sourceLayerInterface this (AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER))
    
    
    (set-field! f_destroyed this #t)
    (set-field! f_scoreableInterface this (NoScoreable.jm_getInstance_0))
    
    (set-field! f_weaponProperties this (WeaponProperties.jstatic_NULL_WEAPON_PROPERTIES))
    
    (set-field! f_collidableWeaponBehavior this (CollidableWeaponBehavior.jm_getNullInstance_0))
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_initAnimationInterface this _animationInterface)
        (send this jm_setAnimationInterface_1 _animationInterface)
        (set-field! f_destroyedAnimationInterface this _destroyedAnimationInterface)
        (set-field! f_movement this _movement)
        (set-field! f_multiPlayerType this _multiPlayerType)))
  this)

(define (WeaponLayer.jm_getStaticType_0)
    (let ()
      (let/ec jreturn
        (jreturn 0))))



