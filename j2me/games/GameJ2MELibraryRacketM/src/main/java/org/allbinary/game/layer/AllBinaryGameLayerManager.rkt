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
;; package org.allbinary.game.layer

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/layer/AllBinaryLayerManager.rkt"
  "../../../../java/lang/Integer.rkt")
(lazy-require ["../../../../org/allbinary/game/GameInfo.rkt" (GameInfo.jstatic_NONE)])
(lazy-require ["../../../../org/allbinary/game/input/NullPlayerGameInputComposite.rkt" (NullPlayerGameInputComposite.jstatic_NULL_PLAYER_GAME_INPUT_COMPOSITE)])
(lazy-require ["../../../../org/allbinary/graphics/ItemColorFactory.rkt" (ItemColorFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/graphics/color/BasicColorFactory.rkt" (BasicColorFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory.rkt" (SmallIntegerSingletonFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define AllBinaryGameLayerManager%
  (class AllBinaryLayerManager%
    (super-new)
    (field [f_backgroundBasicColor JR.null])
    (field [f_foregroundBasicColor JR.null])
    (field [f_gameInfo JR.null])
    (field [f_playerGameInputCompositeInterface JR.null])
    (define/public (jm_getLayerManager_0)
    (let ()
      (let/ec jreturn
        (jreturn this))))
    (define/public (jm_init_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_getBackgroundBasicColor_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_backgroundBasicColor this)))))
    (define/public (jm_setBackgroundBasicColor_1 _backgroundBasicColor)
    (let ()
      (let/ec jreturn
        (set-field! f_backgroundBasicColor this _backgroundBasicColor)
        (set-field! f_INVERT_PAINT (ItemColorFactory.jm_getInstance_0) (send (get-field f_backgroundBasicColor this) jm_intValue_0)))))
    (define/public (jm_getForegroundBasicColor_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_foregroundBasicColor this)))))
    (define/public (jm_setForegroundBasicColor_1 _foregroundBasicColor)
    (let ()
      (let/ec jreturn
        (set-field! f_foregroundBasicColor this _foregroundBasicColor)
        (set-field! f_PAINT (ItemColorFactory.jm_getInstance_0) (send (get-field f_foregroundBasicColor this) jm_intValue_0)))))
    (define/public (jm_getGameInfo_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_gameInfo this)))))
    (define/public (jm_setGameInfo_1 _gameInfo)
    (let ()
      (let/ec jreturn
        (set-field! f_gameInfo this _gameInfo))))
    (define/public (jm_setLayerProcessorList_1 _list)
    (let ([_layerProcessorInterfaceArray JR.null][_size JR.null][_index JR.null])
      (let/ec jreturn
        (set! _layerProcessorInterfaceArray (JR.newArray JR.null (send _list jm_size_0)))
        (set! _size (vector-length _layerProcessorInterfaceArray))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (vector-set! _layerProcessorInterfaceArray _index (vector-ref (get-field f_objectArray _list) _index)))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (send this jm_setLayerProcessorArray_1 _layerProcessorInterfaceArray))))
    (define/public (jm_setPlayerGameInputCompositeInterface_1 _playerGameInputCompositeInterface)
    (let ()
      (let/ec jreturn
        (set-field! f_playerGameInputCompositeInterface this _playerGameInputCompositeInterface))))
    (define/public (jm_getPlayerGameInputCompositeInterface_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_playerGameInputCompositeInterface this)))))))
(define (AllBinaryGameLayerManager.jclassValue) AllBinaryGameLayerManager%)

(define AllBinaryGameLayerManager.jcell_NULL_ALLBINARY_LAYER_MANAGER 'jnone)
(define (AllBinaryGameLayerManager.jstatic_NULL_ALLBINARY_LAYER_MANAGER)
  (when (eq? AllBinaryGameLayerManager.jcell_NULL_ALLBINARY_LAYER_MANAGER 'jnone) (set! AllBinaryGameLayerManager.jcell_NULL_ALLBINARY_LAYER_MANAGER (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0))))
  AllBinaryGameLayerManager.jcell_NULL_ALLBINARY_LAYER_MANAGER)
(define (AllBinaryGameLayerManager.jsetstatic_NULL_ALLBINARY_LAYER_MANAGER value) (set! AllBinaryGameLayerManager.jcell_NULL_ALLBINARY_LAYER_MANAGER value))

(define AllBinaryGameLayerManager.jcell_ID 'jnone)
(define (AllBinaryGameLayerManager.jstatic_ID)
  (when (eq? AllBinaryGameLayerManager.jcell_ID 'jnone) (set! AllBinaryGameLayerManager.jcell_ID (send (SmallIntegerSingletonFactory.jm_getInstance_0) jm_getAt_1 22)))
  AllBinaryGameLayerManager.jcell_ID)
(define (AllBinaryGameLayerManager.jsetstatic_ID value) (set! AllBinaryGameLayerManager.jcell_ID value))

(define (AllBinaryGameLayerManager.jnew_3 _backgroundBasicColor _foregroundBasicColor _gameInfo)
  (define this (new AllBinaryGameLayerManager% [jclass "AllBinaryGameLayerManager"]))
    
    
    
    (set-field! f_playerGameInputCompositeInterface this (NullPlayerGameInputComposite.jstatic_NULL_PLAYER_GAME_INPUT_COMPOSITE))
    (let ([_itemColorFactory JR.null])
      (let/ec jreturn
        (set-field! f_backgroundBasicColor this _backgroundBasicColor)
        (set-field! f_foregroundBasicColor this _foregroundBasicColor)
        (set! _itemColorFactory (ItemColorFactory.jm_getInstance_0))
        (set-field! f_INVERT_PAINT _itemColorFactory (send (get-field f_backgroundBasicColor this) jm_intValue_0))
        (set-field! f_PAINT _itemColorFactory (send (get-field f_foregroundBasicColor this) jm_intValue_0))
        (set-field! f_gameInfo this _gameInfo)))
  this)

(define (AllBinaryGameLayerManager.jm_getNullInstance_0)
    (let ()
      (let/ec jreturn
        (when (eq? (AllBinaryGameLayerManager.jstatic_NULL_ALLBINARY_LAYER_MANAGER) (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0)))
            (begin
            (set! AllBinaryGameLayerManager.jcell_NULL_ALLBINARY_LAYER_MANAGER (AllBinaryGameLayerManager.jnew_3 (get-field f_BLACK (BasicColorFactory.jm_getInstance_0)) (get-field f_WHITE (BasicColorFactory.jm_getInstance_0)) (GameInfo.jstatic_NONE)))))
        (jreturn (AllBinaryGameLayerManager.jstatic_NULL_ALLBINARY_LAYER_MANAGER)))))



