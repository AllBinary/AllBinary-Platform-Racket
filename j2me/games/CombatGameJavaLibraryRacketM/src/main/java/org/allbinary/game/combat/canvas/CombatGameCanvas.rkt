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
;; package org.allbinary.game.combat.canvas

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.rkt")
(lazy-require ["../../../../../org/allbinary/game/combat/destroy/DestroyedLayerProcessor.rkt" (DestroyedLayerProcessor.jm_init_0 DestroyedLayerProcessor.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/combat/destroy/event/DestroyEventCircularStaticPool.rkt" (DestroyEventCircularStaticPool.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/combat/destroy/event/DestroyedEventHandler.rkt" (DestroyedEventHandler.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/configuration/feature/Features.rkt" (Features.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/configuration/feature/GameFeatureFactory.rkt" (GameFeatureFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/layer/drop/DropLayerProcessor.rkt" (DropLayerProcessor.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/layer/identification/GroupLayerManagerListener.rkt" (GroupLayerManagerListener.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory.rkt" (ProgressCanvasFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define CombatGameCanvas%
  (class AllBinaryGameCanvas%
    (super-new)
    (define/public (jm_CombatGameCanvas_init_0)
    (let ()
      (let/ec jreturn
        (send (DestroyEventCircularStaticPool.jm_getInstance_0) jm_init_1 this)
        (send (ProgressCanvasFactory.jm_getInstance_0) jm_addNormalPortion_2 50 "Destroy Events"))))
    (define/override (jm_initApp_1 _abeClientInformation)
    (let ()
      (let/ec jreturn
        (send this jm_CombatGameCanvas_init_0)
        (super jm_initApp_1 _abeClientInformation))))
    (define/public (jm_initConfigurablePortion_1 _portion)
    (let ([_features JR.null][_gameFeatureFactory JR.null])
      (let/ec jreturn
        (DestroyedLayerProcessor.jm_init_0)
        (send (ProgressCanvasFactory.jm_getInstance_0) jm_addNormalPortion_2 _portion "Basic Processors")
        (set! _features (Features.jm_getInstance_0))
        (set! _gameFeatureFactory (GameFeatureFactory.jm_getInstance_0))
        (if (and (send _features jm_isFeature_1 (get-field f_DROPPED_ITEMS _gameFeatureFactory)) (send _features jm_isFeature_1 (get-field f_DROPPED_ITEMS_FROM_DEATH _gameFeatureFactory)))
            (begin
            (set! CombatGameCanvas.jcell_basicLayerProcessor (JR.newArray JR.null 2))
            (vector-set! (CombatGameCanvas.jstatic_basicLayerProcessor) 0 (DestroyedLayerProcessor.jm_getInstance_0))
            (vector-set! (CombatGameCanvas.jstatic_basicLayerProcessor) 1 (DropLayerProcessor.jm_getInstance_0)))
            (begin
            (set! CombatGameCanvas.jcell_basicLayerProcessor (JR.newArray JR.null 1))
            (vector-set! (CombatGameCanvas.jstatic_basicLayerProcessor) 0 (DestroyedLayerProcessor.jm_getInstance_0)))))))
    (define/override (jm_processPlayingGame_0)
    (let ([_index JR.null])
      (let/ec jreturn
        (super jm_processPlayingGame_0)
        (begin
            (set! _index (vector-length (CombatGameCanvas.jstatic_basicLayerProcessor)))
            (let/ec jbreak (let jloop () (when (>= (let ([jvalue (JR.i32 (- _index 1))]) (set! _index jvalue) jvalue) 0)
                (let/ec jcontinue
            (JR.className (vector-ref (CombatGameCanvas.jstatic_basicLayerProcessor) _index))) (jloop))))))))
    (define/override (jm_cleanupGame_0)
    (let ([_index JR.null])
      (let/ec jreturn
        (super jm_cleanupGame_0)
        (begin
            (set! _index (vector-length (CombatGameCanvas.jstatic_basicLayerProcessor)))
            (let/ec jbreak (let jloop () (when (>= (let ([jvalue (JR.i32 (- _index 1))]) (set! _index jvalue) jvalue) 0)
                (let/ec jcontinue
            (JR.className (JR.className (vector-ref (CombatGameCanvas.jstatic_basicLayerProcessor) _index)))) (jloop)))))
        (send (GroupLayerManagerListener.jm_getInstance_0) jm_clear_0)
        (send (GroupLayerManagerListener.jm_getInstance_0) jm_log_0)
        (send (DestroyedEventHandler.jm_getInstance_0) jm_removeAllListeners_0)
        (send this jm_cleanupManager_0))))
    (define/public (jm_cleanupManager_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_gameLayerManager this) jm_cleanup_0))))))
(define (CombatGameCanvas.jclassValue) CombatGameCanvas%)

(define CombatGameCanvas.jcell_basicLayerProcessor 'jnone)
(define (CombatGameCanvas.jstatic_basicLayerProcessor)
  (when (eq? CombatGameCanvas.jcell_basicLayerProcessor 'jnone) (set! CombatGameCanvas.jcell_basicLayerProcessor (JR.newArray JR.null 0)))
  CombatGameCanvas.jcell_basicLayerProcessor)
(define (CombatGameCanvas.jsetstatic_basicLayerProcessor value) (set! CombatGameCanvas.jcell_basicLayerProcessor value))

(define (CombatGameCanvas.jnew_5 _cmdListener _gameLayerManager _highScoresFactoryInterface _gameInitializationInterfaceFactoryInterface _buffered)
  (define this (new CombatGameCanvas% [jclass "CombatGameCanvas"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)



