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
;; package org.allbinary.game.combat.destroy

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../org/allbinary/layer/BasicLayerProcessor.rkt")
(lazy-require ["../../../../../org/allbinary/game/combat/destroy/event/DestroyEventCircularStaticPool.rkt" (DestroyEventCircularStaticPool.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/combat/destroy/event/DestroyedEventHandler.rkt" (DestroyedEventHandler.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(provide (all-defined-out))

(define DestroyedLayerProcessor%
  (class BasicLayerProcessor%
    (super-new)
    (define/override (jm_process_1 _allBinaryLayerManager)
    (let ([_list JR.null][_size JR.null][_destroyedEventHandler JR.null][_destroyEventCircularStaticPool JR.null][_destroyedEvent JR.null][_layerInterface JR.null][_layerInterfaceCanBeNull JR.null][_commonStrings JR.null][_index JR.null])
      (let/ec jreturn
        (set! _list (send this jm_getList_0))
        (set! _size (send _list jm_size_0))
        (set! _destroyedEventHandler (DestroyedEventHandler.jm_getInstance_0))
        (set! _destroyEventCircularStaticPool (DestroyEventCircularStaticPool.jm_getInstance_0))
        (set! _destroyedEvent JR.null)
        (set! _layerInterface JR.null)
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (set! _layerInterfaceCanBeNull (vector-ref (get-field f_objectArray _list) _index))
            (if (not (JR.null? _layerInterfaceCanBeNull))
                (begin
                (set! _layerInterface _layerInterfaceCanBeNull)
                (send _allBinaryLayerManager jm_remove_1 _layerInterface)
                (set! _destroyedEvent (send _destroyEventCircularStaticPool jm_getInstanceForLayer_1 _layerInterface))
                (send _destroyedEventHandler jm_fireEvent_1 _destroyedEvent))
                (begin
                (set! _commonStrings (CommonStrings.jm_getInstance_0)))))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (send _list jm_clear_0))))))
(define (DestroyedLayerProcessor.jclassValue) DestroyedLayerProcessor%)

(define DestroyedLayerProcessor.jcell_DESTROYED_LAYER_PROCESSOR 'jnone)
(define (DestroyedLayerProcessor.jstatic_DESTROYED_LAYER_PROCESSOR)
  (when (eq? DestroyedLayerProcessor.jcell_DESTROYED_LAYER_PROCESSOR 'jnone) (set! DestroyedLayerProcessor.jcell_DESTROYED_LAYER_PROCESSOR (BasicLayerProcessor.jstatic_NULL_LAYER_PROCESSOR)))
  DestroyedLayerProcessor.jcell_DESTROYED_LAYER_PROCESSOR)
(define (DestroyedLayerProcessor.jsetstatic_DESTROYED_LAYER_PROCESSOR value) (set! DestroyedLayerProcessor.jcell_DESTROYED_LAYER_PROCESSOR value))

(define (DestroyedLayerProcessor.jnew_0)
  (define this (new DestroyedLayerProcessor% [jclass "DestroyedLayerProcessor"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (DestroyedLayerProcessor.jm_init_0)
    (let ()
      (let/ec jreturn
        (set! DestroyedLayerProcessor.jcell_DESTROYED_LAYER_PROCESSOR (DestroyedLayerProcessor.jnew_0)))))

(define (DestroyedLayerProcessor.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (DestroyedLayerProcessor.jstatic_DESTROYED_LAYER_PROCESSOR)))))



