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
;; package org.allbinary.game.init

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "./GameInitializationInterface.rkt")
(lazy-require ["../../../../org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory.rkt" (FeaturedAnimationInterfaceFactoryInterfaceFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/game/configuration/GameConfigurationCentral.rkt" (GameConfigurationCentral.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/game/configuration/event/ChangedGameFeatureListener.rkt" (ChangedGameFeatureListener.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/game/configuration/feature/InputFeatureFactory.rkt" (InputFeatureFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/game/configuration/feature/MainFeatureFactory.rkt" (MainFeatureFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/game/input/PlatformInputMappingFactory.rkt" (PlatformInputMappingFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/game/input/event/GameKeyEventFactory.rkt" (GameKeyEventFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/game/resource/FeaturedResourceRelativeRelationshipFactory.rkt" (FeaturedResourceRelativeRelationshipFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/game/resource/ResourceLoadingLevelFactory.rkt" (ResourceLoadingLevelFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory.rkt" (ProgressCanvasFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/image/GameFeatureImageCacheFactory.rkt" (GameFeatureImageCacheFactory.jm_init_0 GameFeatureImageCacheFactory.jm_releaseAll_0)])
(lazy-require ["../../../../org/allbinary/input/motion/CompleteMotionGestureInputToGameMotionGestureInput.rkt" (CompleteMotionGestureInputToGameMotionGestureInput.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/input/motion/button/BasicTouchInputFactory.rkt" (BasicTouchInputFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/input/motion/button/CancelTouchButtonInputFactory.rkt" (CancelTouchButtonInputFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define BaseGameInitialization%
  (class JObject%
    (super-new)
    (field [f_resourceInitializationArray JR.null])
    (field [f_portion 0])
    (field [f_initialized #f])
    (field [f_EARLY_RESOURCES 0])
    (field [f_GAME_RESOURCES 0])
    (field [f_EARLY_CHANGABLE_RESOURCES 0])
    (field [f_GAME_CHANGABLE_RESOURCES 0])
    (field [f_gameInitialized #f])
    (field [f_allLoaded #f])
    (define/public (jm_initKey_1 _portion)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_initKeyMapping_2 _abeClientInformation _portion)
    (let ()
      (let/ec jreturn
        (when (send (ChangedGameFeatureListener.jm_getInstance_0) jm_isChangedFeature_1 (get-field f_INPUT_MAPPING (InputFeatureFactory.jm_getInstance_0)))
            (begin
            (JR.className (send (PlatformInputMappingFactory.jm_getInstance_0) jm_getPersistentInputMappingInstance_0))
            (send (ProgressCanvasFactory.jm_getInstance_0) jm_addNormalPortion_2 50 "Game Keys")
            (send (ChangedGameFeatureListener.jm_getInstance_0) jm_remove_1 (get-field f_INPUT_MAPPING (InputFeatureFactory.jm_getInstance_0))))))))
    (define/public (jm_init_3 _abeClientInformation _commandListener _level)
    (let ([_resourceLoadingLevelFactory JR.null][_localPortion JR.null][_progressCanvas JR.null])
      (let/ec jreturn
        (set! _resourceLoadingLevelFactory (ResourceLoadingLevelFactory.jm_getInstance_0))
        (when (and (not (send this jm_isInitialized_0)) (or (= _level (JR.className (get-field f_LOAD_ALL _resourceLoadingLevelFactory))) (= _level (JR.className (get-field f_LOAD_EARLY _resourceLoadingLevelFactory)))))
            (begin
            (set! _localPortion 40)
            (when (= _level (JR.className (get-field f_LOAD_EARLY _resourceLoadingLevelFactory)))
                (begin
                (set! _localPortion 8)))
            (send this jm_setInitialized_1 #t)
            (send this jm_initKey_1 (send this jm_getPortion_0))
            (send this jm_initKeyMapping_2 _abeClientInformation (send this jm_getPortion_0))
            (send (GameKeyEventFactory.jm_getInstance_0) jm_init_0)
            (set! _progressCanvas (ProgressCanvasFactory.jm_getInstance_0))
            (send _progressCanvas jm_addNormalPortion_2 _localPortion "Game Key Events")
            (send (BasicTouchInputFactory.jm_getInstance_0) jm_init_1 (JR.className (send (PlatformInputMappingFactory.jm_getInstance_0) jm_getPersistentInputMappingInstance_0)))
            (CancelTouchButtonInputFactory.jm_getInstance_0)
            (send _progressCanvas jm_addNormalPortion_2 _localPortion "Touch Input")
            (send (CompleteMotionGestureInputToGameMotionGestureInput.jm_getInstance_0) jm_init_0)
            (send _progressCanvas jm_addNormalPortion_2 _localPortion "Motion Input")
            (GameFeatureImageCacheFactory.jm_init_0)
            (send _progressCanvas jm_addNormalPortion_2 _localPortion "Image Cache")
            (JR.className (vector-ref (get-field f_resourceInitializationArray this) (get-field f_EARLY_RESOURCES this))))))))
    (define/public (jm_resourceInitialization_1 _level)
    (let ([_resourceLoadingLevelFactory JR.null])
      (let/ec jreturn
        (set! _resourceLoadingLevelFactory (ResourceLoadingLevelFactory.jm_getInstance_0))
        (when (and (send this jm_resourceAnimationChange_0) (= _level (JR.className (get-field f_LOAD_EARLY _resourceLoadingLevelFactory))))
            (begin
            (send this jm_clearResources_0)
            (JR.className (vector-ref (get-field f_resourceInitializationArray this) (get-field f_EARLY_CHANGABLE_RESOURCES this)))))
        (when (and (send this jm_resourceAnimationChange_0) (= _level (JR.className (get-field f_LOAD_ALL _resourceLoadingLevelFactory))))
            (begin
            (when (get-field f_allLoaded this)
                (begin
                (send this jm_clearResources_0)))
            (when (= (JR.className (send (FeaturedAnimationInterfaceFactoryInterfaceFactory.jm_getInstance_0) jm_getList_0)) 0)
                (begin
                (JR.className (vector-ref (get-field f_resourceInitializationArray this) (get-field f_EARLY_CHANGABLE_RESOURCES this)))))
            (JR.className (vector-ref (get-field f_resourceInitializationArray this) (get-field f_GAME_CHANGABLE_RESOURCES this)))
            (set-field! f_allLoaded this #t))))))
    (define/public (jm_resourceAnimationChange_0)
    (let ([_changedGameFeatureListener JR.null][_gameConfigurationCentral JR.null])
      (let/ec jreturn
        (set! _changedGameFeatureListener (ChangedGameFeatureListener.jm_getInstance_0))
        (set! _gameConfigurationCentral (GameConfigurationCentral.jm_getInstance_0))
        (when (send _changedGameFeatureListener jm_isChangedGameConfiguration_1 (get-field f_SCALE _gameConfigurationCentral))
            (begin
            (jreturn #t)))
        (when (send (ChangedGameFeatureListener.jm_getInstance_0) jm_isChangedFeature_1 (get-field f_STATIC (MainFeatureFactory.jm_getInstance_0)))
            (begin
            (jreturn #t)))
        (jreturn #f))))
    (define/public (jm_clearResources_0)
    (let ([_featuredAnimationInterfaceFactoryInterfaceFactory JR.null])
      (let/ec jreturn
        (set-field! f_allLoaded this #f)
        (GameFeatureImageCacheFactory.jm_releaseAll_0)
        (set! _featuredAnimationInterfaceFactoryInterfaceFactory (FeaturedAnimationInterfaceFactoryInterfaceFactory.jm_getInstance_0))
        (send _featuredAnimationInterfaceFactoryInterfaceFactory jm_clear_0)
        (send (FeaturedResourceRelativeRelationshipFactory.jm_getInstance_0) jm_clear_0))))
    (define/public (jm_setGameInitialized_1 _gameInitialized)
    (let ()
      (let/ec jreturn
        (set-field! f_gameInitialized this _gameInitialized))))
    (define/public (jm_isGameInitialized_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_gameInitialized this)))))
    (define/public (jm_getPortion_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_portion this)))))
    (define/public (jm_setInitialized_1 _initialized)
    (let ()
      (let/ec jreturn
        (set-field! f_initialized this _initialized))))
    (define/public (jm_isInitialized_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_initialized this)))))))
(define (BaseGameInitialization.jclassValue) BaseGameInitialization%)

(define BaseGameInitialization.jcell_NULL_BASE_GAME_INITIALIZATION 'jnone)
(define (BaseGameInitialization.jstatic_NULL_BASE_GAME_INITIALIZATION)
  (when (eq? BaseGameInitialization.jcell_NULL_BASE_GAME_INITIALIZATION 'jnone) (set! BaseGameInitialization.jcell_NULL_BASE_GAME_INITIALIZATION (BaseGameInitialization.jnew_2 (JR.newArray JR.null 0) 0)))
  BaseGameInitialization.jcell_NULL_BASE_GAME_INITIALIZATION)
(define (BaseGameInitialization.jsetstatic_NULL_BASE_GAME_INITIALIZATION value) (set! BaseGameInitialization.jcell_NULL_BASE_GAME_INITIALIZATION value))

(define (BaseGameInitialization.jnew_2 _resourceInitializationArray _portion)
  (define this (new BaseGameInitialization% [jclass "BaseGameInitialization"]))
    
    
    
    (set-field! f_EARLY_RESOURCES this 0)
    (set-field! f_GAME_RESOURCES this 1)
    (set-field! f_EARLY_CHANGABLE_RESOURCES this 2)
    (set-field! f_GAME_CHANGABLE_RESOURCES this 3)
    
    
    (let ()
      (let/ec jreturn
        (set-field! f_resourceInitializationArray this _resourceInitializationArray)
        (set-field! f_portion this _portion)))
  this)



