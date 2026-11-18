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
;; package org.allbinary.game.layer.pickup

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../org/allbinary/game/multiplayer/layer/MultiPlayerGameLayer.rkt"
  "./PickedUpLayerInterface.rkt"
  "./PickupableInterface.rkt")
(lazy-require ["../../../../../org/allbinary/animation/NullAnimationFactory.rkt" (NullAnimationFactory.jm_getFactoryInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/collision/CollidableAlwaysPickupNeverCollideBehaviorFactory.rkt" (CollidableAlwaysPickupNeverCollideBehaviorFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/combat/destroy/DestroyedLayerProcessor.rkt" (DestroyedLayerProcessor.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/identification/BasicGroupFactory.rkt" (BasicGroupFactory.jm_getInstance_0)])
(lazy-require ["./CountedPickedUpLayerInterfaceFactory.rkt" (CountedPickedUpLayerInterfaceFactory.jstatic_NULL_COUNTED_PICKUP_LAYER_FACTORY)])
(provide (all-defined-out))

(define PickupLayer%
  (class MultiPlayerGameLayer%
    (super-new)
    (field [f_pickedUpLayerInterfaceFactoryInterface JR.null])
    (field [f_destroyed #f])
    (field [f_animationInterface JR.null])
    (define/public (jm_init_2 _pickedUpLayerInterfaceFactoryInterface _animationInterface)
    (let ()
      (let/ec jreturn
        (set-field! f_pickedUpLayerInterfaceFactoryInterface this _pickedUpLayerInterfaceFactoryInterface)
        (set-field! f_animationInterface this _animationInterface)
        (send this jm_setDestroyed_1 #f))))
    (define/public (jm_initXYZ_3 _x _y _z)
    (let ()
      (let/ec jreturn
        (send this jm_setPosition_3 _x _y _z))))
    (define/override (jm_paint_1 _graphics)
    (let ([_viewPosition JR.null][_viewX JR.null][_viewY JR.null])
      (let/ec jreturn
        (set! _viewPosition (send this jm_getViewPosition_0))
        (set! _viewX (send _viewPosition jm_getX_0))
        (set! _viewY (send _viewPosition jm_getY_0))
        (send (get-field f_animationInterface this) jm_paintXY_3 _graphics _viewX _viewY))))
    (define/override (jm_paintThreed_1 _graphics)
    (let ([_viewPosition JR.null][_viewX JR.null][_viewY JR.null])
      (let/ec jreturn
        (set! _viewPosition (send this jm_getViewPosition_0))
        (set! _viewX (send _viewPosition jm_getX_0))
        (set! _viewY (send _viewPosition jm_getY_0))
        (send (get-field f_animationInterface this) jm_paintThreedXYZ_4 _graphics _viewX _viewY 3))))
    (define/public (jm_getPickedUpLayerInterfaceFactoryInterface_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_pickedUpLayerInterfaceFactoryInterface this)))))
    (define/public (jm_setPickedUp_0)
    (let ()
      (let/ec jreturn
        (send this jm_setDestroyed_1 #t))))
    (define/override (jm_isDestroyed_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_destroyed this)))))
    (define/public (jm_setDestroyed_1 _destroyed)
    (let ()
      (let/ec jreturn
        (set-field! f_destroyed this _destroyed)
        (when (send this jm_isDestroyed_0)
            (begin
            (send (DestroyedLayerProcessor.jm_getInstance_0) jm_add_1 this))))))
    (define/override (jm_damage_2 _damage _damageType)
    (let ()
      (let/ec jreturn (void))))
    (define/override (jm_getDamage_1 _damageType)
    (let ()
      (let/ec jreturn
        (jreturn 0))))
    (define/override (jm_set_1 _gl)
    (let ([_openGLSurfaceChangedInterface JR.null])
      (let/ec jreturn
        (set! _openGLSurfaceChangedInterface (get-field f_animationInterface this))
        (send _openGLSurfaceChangedInterface jm_set_1 _gl))))))
(define (PickupLayer.jclassValue) PickupLayer%)

(define (PickupLayer.jnew_7 _name _remoteInfo _total _pickedUpLayerInterfaceFactoryInterface _animationInterface _rectangle _viewPosition)
  (define this (new PickupLayer% [jclass "PickupLayer"]))
    (set-field! f_pickedUpLayerInterfaceFactoryInterface this (CountedPickedUpLayerInterfaceFactory.jstatic_NULL_COUNTED_PICKUP_LAYER_FACTORY))
    
    (set-field! f_animationInterface this (JR.className (NullAnimationFactory.jm_getFactoryInstance_0)))
    (let ()
      (let/ec jreturn
        (void)
        (send this jm_setCollidableInferface_1 (send (CollidableAlwaysPickupNeverCollideBehaviorFactory.jm_getInstance_0) jm_createBehavior_0))
        (send this jm_setLayerWidth_1 10)
        (send this jm_setLayerHeight_1 10)
        (send this jm_init_2 _pickedUpLayerInterfaceFactoryInterface _animationInterface)))
  this)



