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
  "../../../../../org/allbinary/game/combat/damage/DamageableInterface.rkt"
  "../../../../../org/allbinary/game/combat/destroy/DestroyableInterface.rkt"
  "../../../../../org/allbinary/game/layer/CollidableCompositeLayer.rkt"
  "../../../../../org/allbinary/game/layer/pickup/PickupCompositeInterface.rkt"
  "./SpecialGameInputInterface.rkt")
(lazy-require ["../../../../../org/allbinary/game/collision/CollidableNeverCollideBehaviorFactory.rkt" (CollidableNeverCollideBehaviorFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/identification/BasicGroupFactory.rkt" (BasicGroupFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/layer/AllBinaryGameLayerManager.rkt" (AllBinaryGameLayerManager.jm_getNullInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/layer/pickup/PickupBehavior.rkt" (PickupBehavior.jm_getNullInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/part/PartInterfaceUtil.rkt" (PartInterfaceUtil.jm_getZeroArray_0)])
(lazy-require ["../../../../../org/allbinary/graphics/RectangleFactory.rkt" (RectangleFactory.jstatic_SINGLETON)])
(lazy-require ["../../../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/math/PositionStrings.rkt" (PositionStrings.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonSeps.rkt" (CommonSeps.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/view/ViewPositionBase.rkt" (ViewPositionBase.jstatic_NULL_VIEW_POSITION)])
(provide (all-defined-out))

(define CollidableDestroyableDamageableLayer%
  (class CollidableCompositeLayer%
    (super-new)
    (field [f_groupInterface JR.null])
    (field [f_readyForExplosion #f])
    (field [f_initWidth 0])
    (field [f_initHeight 0])
    (field [f_initX 0])
    (field [f_initY 0])
    (field [f_initZ 0])
    (field [f_partInterfaceArrayP JR.null])
    (field [f_pickupBehavior JR.null])
    (field [f_allBinaryGameLayerManagerP JR.null])
    (field [f_isDraggable #f])
    (field [f_isDragged #f])
    (field [f_isDropped #f])
    (define/public (jm_initPosition_0)
    (let ()
      (let/ec jreturn
        (send this jm_setPosition_3 (get-field f_initX this) (get-field f_initY this) (get-field f_initZ this)))))
    (define/public (jm_initPositionXYZ_3 _x _y _z)
    (let ()
      (let/ec jreturn
        (set-field! f_initX this _x)
        (set-field! f_initY this _y)
        (set-field! f_initZ this _z))))
    (define/override (jm_paint_1 _graphics)
    (let ()
      (let/ec jreturn
        (super jm_paint_1 _graphics))))
    (define/public (jm_damage_2 _damage _damageType)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "Exception" (get-field f_NOT_IMPLEMENTED (get-field f_commonStrings this)))))))
    (define/public (jm_getDamage_1 _damageType)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "Exception" (get-field f_NOT_IMPLEMENTED (get-field f_commonStrings this)))))))
    (define/public (jm_isDestroyed_0)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "Exception" (get-field f_NOT_IMPLEMENTED (get-field f_commonStrings this)))))))
    (define/override (jm_getGroupInterface_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_groupInterface this)))))
    (define/public (jm_setGroupInterface_1 _teamInterface)
    (let ()
      (let/ec jreturn
        (set-field! f_groupInterface this _teamInterface))))
    (define/public (jm_setAllBinaryGameLayerManager_1 _allBinaryGameLayerManager)
    (let ()
      (let/ec jreturn
        (set-field! f_allBinaryGameLayerManagerP this _allBinaryGameLayerManager)
        (when (JR.null? (get-field f_allBinaryGameLayerManagerP this))
            (begin
            (raise (JR.newException "RuntimeException")))))))
    (define/public (jm_isReadyForExplosion_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_readyForExplosion this)))))
    (define/public (jm_setReadyForExplosion_1 _isReadyForExplosion)
    (let ()
      (let/ec jreturn
        (set-field! f_readyForExplosion this _isReadyForExplosion))))
    (define/public (jm_getInitWidth_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_initWidth this)))))
    (define/public (jm_getInitHeight_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_initHeight this)))))
    (define/public (jm_getInitX_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_initX this)))))
    (define/public (jm_getInitY_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_initY this)))))
    (define/public (jm_up_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_down_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_right_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_left_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_strafeLeft_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_strafeRight_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_fire_2 _layerManager _gameKeyEvent)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_special1_2 _layerManager _gameKeyEvent)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_special2_2 _layerManager _gameKeyEvent)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_special3_2 _layerManager _gameKeyEvent)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_special4_2 _layerManager _gameKeyEvent)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_special5_2 _layerManager _gameKeyEvent)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_upAnalog_1 _yAnalogValue)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_downAnalog_1 _yAnalogValue)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_rightAnalog_1 _xAnalogValue)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_leftAnalog_1 _xAnalogValue)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_rightTrigger_3 _layerManager _gameKeyEvent _xAnalogValue)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_leftTrigger_3 _layerManager _gameKeyEvent _xAnalogValue)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_onDestroyed_1 _destroyedEvent)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_getPickupBehavior_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_pickupBehavior this)))))
    (define/public (jm_setPickupBehavior_1 _pickupBehavior)
    (let ()
      (let/ec jreturn
        (set-field! f_pickupBehavior this _pickupBehavior))))
    (define/public (jm_addPart_1 _pickedUpLayerInterfaceFactoryInterface)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_setPartInterfaceArray_1 _partInterfaceArray)
    (let ()
      (let/ec jreturn
        (set-field! f_partInterfaceArrayP this _partInterfaceArray))))
    (define/public (jm_getPartInterfaceArray_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_partInterfaceArrayP this)))))
    (define/override (jm_toStringAppend_1 _stringBuffer)
    (let ([_commonSeps JR.null][_positionStrings JR.null][_groupInterfaceArray JR.null][_size JR.null][_index JR.null][_pickupBehavior JR.null])
      (let/ec jreturn
        (set! _commonSeps (CommonSeps.jm_getInstance_0))
        (set! _positionStrings (PositionStrings.jm_getInstance_0))
        (super jm_toStringAppend_1 _stringBuffer)
        (send _stringBuffer jm_append_1 (get-field f_NEW_LINE _commonSeps))
        (set! _groupInterfaceArray (send this jm_getGroupInterface_0))
        (set! _size (vector-length _groupInterfaceArray))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (send _stringBuffer jm_append_1 (JR.toString (vector-ref _groupInterfaceArray _index)))
            (send _stringBuffer jm_append_1 (get-field f_COMMA _commonSeps)))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (set! _pickupBehavior (send this jm_getPickupBehavior_0))
        (when (not (JR.null? _pickupBehavior))
            (begin
            (send _stringBuffer jm_append_1 (get-field f_NEW_LINE _commonSeps))
            (send _stringBuffer jm_append_1 (send _pickupBehavior jm_toString_0))))
        (send _stringBuffer jm_append_1 (get-field f_NEW_LINE _commonSeps))
        (send _stringBuffer jm_append_1 (CollidableDestroyableDamageableLayer.jstatic_READYFOREXPLOSION))
        (send _stringBuffer jm_appendboolean_1 (get-field f_readyForExplosion this))
        (send _stringBuffer jm_append_1 (get-field f_NEW_LINE _commonSeps))
        (send _stringBuffer jm_append_1 (get-field f_INIT (get-field f_commonStrings this)))
        (send _stringBuffer jm_append_1 (get-field f_SPACE _commonSeps))
        (send _stringBuffer jm_append_1 (get-field f_X_LABEL _positionStrings))
        (send _stringBuffer jm_appendint_1 (get-field f_initX this))
        (send _stringBuffer jm_append_1 (get-field f_Y_LABEL _positionStrings))
        (send _stringBuffer jm_appendint_1 (get-field f_initX this))
        (send _stringBuffer jm_append_1 (get-field f_Z_LABEL _positionStrings))
        (send _stringBuffer jm_appendint_1 (get-field f_initZ this)))))
    (define/override (jm_toString_0)
    (let ([_stringBuffer JR.null])
      (let/ec jreturn
        (set! _stringBuffer (StringMaker.jnew_0))
        (send this jm_toStringAppend_1 _stringBuffer)
        (jreturn (send _stringBuffer jm_toString_0)))))))
(define (CollidableDestroyableDamageableLayer.jclassValue) CollidableDestroyableDamageableLayer%)

(define CollidableDestroyableDamageableLayer.jcell_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER 'jnone)
(define (CollidableDestroyableDamageableLayer.jstatic_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER)
  (when (eq? CollidableDestroyableDamageableLayer.jcell_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER 'jnone) (set! CollidableDestroyableDamageableLayer.jcell_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0))))
  CollidableDestroyableDamageableLayer.jcell_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER)
(define (CollidableDestroyableDamageableLayer.jsetstatic_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER value) (set! CollidableDestroyableDamageableLayer.jcell_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER value))

(define CollidableDestroyableDamageableLayer.jcell_READYFOREXPLOSION 'jnone)
(define (CollidableDestroyableDamageableLayer.jstatic_READYFOREXPLOSION)
  (when (eq? CollidableDestroyableDamageableLayer.jcell_READYFOREXPLOSION 'jnone) (set! CollidableDestroyableDamageableLayer.jcell_READYFOREXPLOSION "ReadyForExplosion: "))
  CollidableDestroyableDamageableLayer.jcell_READYFOREXPLOSION)
(define (CollidableDestroyableDamageableLayer.jsetstatic_READYFOREXPLOSION value) (set! CollidableDestroyableDamageableLayer.jcell_READYFOREXPLOSION value))

(define (CollidableDestroyableDamageableLayer.jnew_4 _groupInterface _name _layerInfo _viewPosition)
  (define this (new CollidableDestroyableDamageableLayer% [jclass "CollidableDestroyableDamageableLayer"]))
    
    
    
    
    
    
    
    (set-field! f_partInterfaceArrayP this (PartInterfaceUtil.jm_getZeroArray_0))
    
    (set-field! f_allBinaryGameLayerManagerP this (AllBinaryGameLayerManager.jm_getNullInstance_0))
    (set-field! f_isDraggable this #f)
    (set-field! f_isDragged this #f)
    (set-field! f_isDropped this #f)
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_initWidth this (send _layerInfo jm_getWidth_0))
        (set-field! f_initHeight this (send _layerInfo jm_getHeight_0))
        (set-field! f_groupInterface this _groupInterface)
        (set-field! f_pickupBehavior this (PickupBehavior.jm_getNullInstance_0))))
  this)

(define (CollidableDestroyableDamageableLayer.jm_getNullInstance_0)
    (let ()
      (let/ec jreturn
        (when (eq? (CollidableDestroyableDamageableLayer.jstatic_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER) (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0)))
            (begin
            (set! CollidableDestroyableDamageableLayer.jcell_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER (CollidableDestroyableDamageableLayer.jnew_4 (get-field f_NONE_ARRAY (BasicGroupFactory.jm_getInstance_0)) (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) (RectangleFactory.jstatic_SINGLETON) (ViewPositionBase.jstatic_NULL_VIEW_POSITION)))))
        (jreturn (CollidableDestroyableDamageableLayer.jstatic_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER)))))



