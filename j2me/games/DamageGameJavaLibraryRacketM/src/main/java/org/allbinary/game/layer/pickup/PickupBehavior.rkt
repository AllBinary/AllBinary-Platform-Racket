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
  "./PickupBehaviorInterface.rkt")
(lazy-require ["../../../../../org/allbinary/game/layer/CollidableCompositeLayer.rkt" (CollidableCompositeLayer.jm_getNullInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/part/CountedLayerInterfaceFactoryPart.rkt" (CountedLayerInterfaceFactoryPart.jstatic_NULL_COUNTED_LAYER_INTERFACE_FACTORY)])
(lazy-require ["../../../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/communication/log/PreLogUtil.rkt" (PreLogUtil.jm_putOE_4)])
(lazy-require ["../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["./PickedUpLayerTypeFactory.rkt" (PickedUpLayerTypeFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define PickupBehavior%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_countedIndex 0])
    (field [f_ownerLayerInterface JR.null])
    (define/public (jm_doPickup_1 _pickupProcessorInterface)
    (let ([_healthInterfaceCompositeInterface JR.null][_commonStrings JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (set! _commonStrings (CommonStrings.jm_getInstance_0))
            (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION _commonStrings) this "doPickup" _e))])
            (set! _healthInterfaceCompositeInterface (get-field f_ownerLayerInterface this))
            (when (JR.className (send _healthInterfaceCompositeInterface jm_getHealthInterface_0))
                (begin
                (send _pickupProcessorInterface jm_process_1 (get-field f_ownerLayerInterface this))))))))
    (define/public (jm_doPickupLayer_1 _pickupLayerInterface)
    (let ([_pickedUpLayerInterfaceFactoryInterface JR.null][_pickedUpLayerType JR.null][_pickedUpLayerTypeFactory JR.null][_pickupProcessorInterface JR.null][_collidableDestroyableDamageableLayer JR.null][_commonStrings JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (set! _commonStrings (CommonStrings.jm_getInstance_0))
            (PreLogUtil.jm_putOE_4 (get-field f_EXCEPTION _commonStrings) this "doPickup" _e))])
            (set! _pickedUpLayerInterfaceFactoryInterface (send _pickupLayerInterface jm_getPickedUpLayerInterfaceFactoryInterface_0))
            (set! _pickedUpLayerType (send _pickedUpLayerInterfaceFactoryInterface jm_getPickedUpLayerType_0))
            (set! _pickedUpLayerTypeFactory (PickedUpLayerTypeFactory.jm_getInstance_0))
            (if (or (or (or (eq? _pickedUpLayerType (get-field f_BEAM _pickedUpLayerTypeFactory)) (eq? _pickedUpLayerType (get-field f_MINE _pickedUpLayerTypeFactory))) (eq? _pickedUpLayerType (get-field f_PROJECTILE _pickedUpLayerTypeFactory))) (eq? _pickedUpLayerType (get-field f_ENHANCEMENT _pickedUpLayerTypeFactory)))
                (begin
                (send this jm_add_1 _pickedUpLayerInterfaceFactoryInterface))
                (if (eq? (send _pickedUpLayerInterfaceFactoryInterface jm_getPickedUpLayerType_0) (get-field f_PART _pickedUpLayerTypeFactory))
                (begin
                (set! _collidableDestroyableDamageableLayer (get-field f_ownerLayerInterface this))
                (send _collidableDestroyableDamageableLayer jm_addPart_1 _pickedUpLayerInterfaceFactoryInterface))
                (if (eq? _pickedUpLayerType (get-field f_NONE _pickedUpLayerTypeFactory))
                (begin
                (void))
                (begin
                (set! _pickupProcessorInterface _pickedUpLayerInterfaceFactoryInterface)
                (send this jm_doPickup_1 _pickupProcessorInterface)))))
            (send _pickupLayerInterface jm_setPickedUp_0)))))
    (define/public (jm_add_1 _countedPickedUpLayerInterfaceFactoryInterface)
    (let ([_partIndex JR.null])
      (let/ec jreturn
        (set! _partIndex (JR.i32 (+ (send _countedPickedUpLayerInterfaceFactoryInterface jm_getId_0) (get-field f_countedIndex this))))
        (send this jm_addAt_2 _countedPickedUpLayerInterfaceFactoryInterface _partIndex))))
    (define/public (jm_addAt_2 _countedPickedUpLayerInterfaceFactoryInterface _partIndex)
    (let ([_collidableDestroyableDamageableLayer JR.null][_countedLayerInterfaceFactory JR.null])
      (let/ec jreturn
        (set! _collidableDestroyableDamageableLayer (get-field f_ownerLayerInterface this))
        (set! _countedLayerInterfaceFactory (vector-ref (send _collidableDestroyableDamageableLayer jm_getPartInterfaceArray_0) _partIndex))
        (send _countedLayerInterfaceFactory jm_setTotal_1 (JR.i32 (+ (send _countedLayerInterfaceFactory jm_getTotal_0) (send _countedPickedUpLayerInterfaceFactoryInterface jm_getTotal_0)))))))
    (define/public (jm_getFirstAvailableCountedLayerInterfaceFactory_1 _pickedUpLayerTypeArray)
    (let ([_collidableDestroyableDamageableLayer JR.null][_partInterfaceArray JR.null][_size JR.null][_nextCountedLayerInterfaceFactory JR.null][_countedPickedUpLayerInterfaceFactory JR.null][_index2 JR.null][_index JR.null])
      (let/ec jreturn
        (set! _collidableDestroyableDamageableLayer (get-field f_ownerLayerInterface this))
        (set! _partInterfaceArray (send _collidableDestroyableDamageableLayer jm_getPartInterfaceArray_0))
        (set! _size (vector-length _partInterfaceArray))
        (set! _nextCountedLayerInterfaceFactory JR.null)
        (set! _countedPickedUpLayerInterfaceFactory JR.null)
        (begin
            (set! _index (get-field f_countedIndex this))
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (set! _nextCountedLayerInterfaceFactory (vector-ref (send _collidableDestroyableDamageableLayer jm_getPartInterfaceArray_0) _index))
            (set! _countedPickedUpLayerInterfaceFactory (send _nextCountedLayerInterfaceFactory jm_getCountedPickedUpLayerInterfaceFactory_0))
            (begin
                (set! _index2 (vector-length _pickedUpLayerTypeArray))
                (let/ec jbreak (let jloop () (when (>= (let ([jvalue (JR.i32 (- _index2 1))]) (set! _index2 jvalue) jvalue) 0)
                    (let/ec jcontinue
                (when (eq? (send _countedPickedUpLayerInterfaceFactory jm_getPickedUpLayerType_0) (vector-ref _pickedUpLayerTypeArray _index2))
                    (begin
                    (when (> (send _nextCountedLayerInterfaceFactory jm_getTotal_0) 0)
                        (begin
                        (jreturn _nextCountedLayerInterfaceFactory)))))) (jloop))))))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (jreturn (CountedLayerInterfaceFactoryPart.jstatic_NULL_COUNTED_LAYER_INTERFACE_FACTORY)))))
    (define/public (jm_getCountedLayerInterfaceFactoryForSlot_1 _slotIndex)
    (let ([_currentSlot JR.null][_collidableDestroyableDamageableLayer JR.null][_partInterfaceArray JR.null][_size JR.null][_nextCountedLayerInterfaceFactory JR.null][_index JR.null])
      (let/ec jreturn
        (set! _currentSlot 0)
        (set! _collidableDestroyableDamageableLayer (get-field f_ownerLayerInterface this))
        (set! _partInterfaceArray (send _collidableDestroyableDamageableLayer jm_getPartInterfaceArray_0))
        (set! _size (vector-length _partInterfaceArray))
        (set! _nextCountedLayerInterfaceFactory JR.null)
        (begin
            (set! _index (get-field f_countedIndex this))
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (set! _nextCountedLayerInterfaceFactory (vector-ref (send _collidableDestroyableDamageableLayer jm_getPartInterfaceArray_0) _index))
            (when (> (send _nextCountedLayerInterfaceFactory jm_getTotal_0) 0)
                (begin
                (if (= _currentSlot _slotIndex)
                    (begin
                    (jreturn _nextCountedLayerInterfaceFactory))
                    (begin
                    (set! _currentSlot (JR.i32 (+ _currentSlot 1))))))))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (jreturn (CountedLayerInterfaceFactoryPart.jstatic_NULL_COUNTED_LAYER_INTERFACE_FACTORY)))))
    (define/public (jm_getCountedIndex_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_countedIndex this)))))))
(define (PickupBehavior.jclassValue) PickupBehavior%)

(define PickupBehavior.jcell_NULL_PICKUP_BEHAVIOR 'jnone)
(define (PickupBehavior.jstatic_NULL_PICKUP_BEHAVIOR)
  (when (eq? PickupBehavior.jcell_NULL_PICKUP_BEHAVIOR 'jnone) (set! PickupBehavior.jcell_NULL_PICKUP_BEHAVIOR (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0))))
  PickupBehavior.jcell_NULL_PICKUP_BEHAVIOR)
(define (PickupBehavior.jsetstatic_NULL_PICKUP_BEHAVIOR value) (set! PickupBehavior.jcell_NULL_PICKUP_BEHAVIOR value))

(define (PickupBehavior.jnew_2 _ownerLayerInterface _countedIndex)
  (define this (new PickupBehavior% [jclass "PickupBehavior"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    
    
    (let ()
      (let/ec jreturn
        (set-field! f_ownerLayerInterface this _ownerLayerInterface)
        (set-field! f_countedIndex this _countedIndex)))
  this)

(define (PickupBehavior.jm_getNullInstance_0)
    (let ()
      (let/ec jreturn
        (when (eq? (PickupBehavior.jstatic_NULL_PICKUP_BEHAVIOR) (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0)))
            (begin
            (set! PickupBehavior.jcell_NULL_PICKUP_BEHAVIOR (PickupBehavior.jnew_2 (CollidableCompositeLayer.jm_getNullInstance_0) 0))))
        (jreturn (PickupBehavior.jstatic_NULL_PICKUP_BEHAVIOR)))))



