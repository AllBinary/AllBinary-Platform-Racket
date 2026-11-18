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
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../org/allbinary/game/configuration/event/ChangedGameFeatureListener.rkt" (ChangedGameFeatureListener.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/game/configuration/event/GameInitializedEvent.rkt" (GameInitializedEvent.jnew_1)])
(lazy-require ["../../../../org/allbinary/game/configuration/event/GameInitializedEventHandler.rkt" (GameInitializedEventHandler.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/game/configuration/feature/Features.rkt" (Features.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/game/configuration/feature/MainFeatureFactory.rkt" (MainFeatureFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/game/resource/ResourceLoadingLevelFactory.rkt" (ResourceLoadingLevelFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define GameInitializationUtil%
  (class JObject%
    (super-new)
    (field [f_EVENT JR.null])
    (define/public (jm_initDemo_3 _abeClientInformation _canvas _gameInitializationInterfaceFactoryInterface)
    (let ([_mainFeatureFactory JR.null][_gameInitializationInterface JR.null][_features JR.null][_resourceLoadingLevelFactory JR.null])
      (let/ec jreturn
        (set! _mainFeatureFactory (MainFeatureFactory.jm_getInstance_0))
        (when (send (ChangedGameFeatureListener.jm_getInstance_0) jm_isChangedFeature_1 (get-field f_STATIC _mainFeatureFactory))
            (begin
            (set! _gameInitializationInterface (send _gameInitializationInterfaceFactoryInterface jm_getInstance_0))
            (set! _features (Features.jm_getInstance_0))
            (if (send _features jm_isFeature_1 (get-field f_LOAD_ALL _mainFeatureFactory))
                (begin
                (send this jm_initGame_3 _abeClientInformation _canvas _gameInitializationInterfaceFactoryInterface))
                (if (send _features jm_isFeature_1 (get-field f_LOAD_ONDEMAND _mainFeatureFactory))
                (begin
                (set! _resourceLoadingLevelFactory (ResourceLoadingLevelFactory.jm_getInstance_0))
                (send _gameInitializationInterface jm_init_3 _abeClientInformation (send _canvas jm_getCustomCommandListener_0) (JR.className (get-field f_LOAD_EARLY _resourceLoadingLevelFactory)))
                (send (get-field f_EVENT this) jm_setResourceLoadingLevel_1 (get-field f_LOAD_EARLY _resourceLoadingLevelFactory)))
                (begin
                (raise (JR.newException "Exception" "No Loading Feature Available")))))
            (send (GameInitializedEventHandler.jm_getInstance_0) jm_fireEvent_1 (get-field f_EVENT this)))))))
    (define/public (jm_initGame_3 _abeClientInformation _canvas _gameInitializationInterfaceFactoryInterface)
    (let ([_gameInitializationInterface JR.null][_resourceLoadingLevelFactory JR.null])
      (let/ec jreturn
        (when (send (ChangedGameFeatureListener.jm_getInstance_0) jm_isChangedFeature_1 (get-field f_STATIC (MainFeatureFactory.jm_getInstance_0)))
            (begin
            (set! _gameInitializationInterface (send _gameInitializationInterfaceFactoryInterface jm_getInstance_0))
            (set! _resourceLoadingLevelFactory (ResourceLoadingLevelFactory.jm_getInstance_0))
            (send _gameInitializationInterface jm_init_3 _abeClientInformation (send _canvas jm_getCustomCommandListener_0) (JR.className (get-field f_LOAD_ALL _resourceLoadingLevelFactory)))
            (send (get-field f_EVENT this) jm_setResourceLoadingLevel_1 (get-field f_LOAD_ALL _resourceLoadingLevelFactory))
            (send (GameInitializedEventHandler.jm_getInstance_0) jm_fireEvent_1 (get-field f_EVENT this))
            (send (ChangedGameFeatureListener.jm_getInstance_0) jm_remove_1 (get-field f_STATIC (MainFeatureFactory.jm_getInstance_0))))))))))
(define (GameInitializationUtil.jclassValue) GameInitializationUtil%)

(define GameInitializationUtil.jcell_instance 'jnone)
(define (GameInitializationUtil.jstatic_instance)
  (when (eq? GameInitializationUtil.jcell_instance 'jnone) (set! GameInitializationUtil.jcell_instance (GameInitializationUtil.jnew_0)))
  GameInitializationUtil.jcell_instance)
(define (GameInitializationUtil.jsetstatic_instance value) (set! GameInitializationUtil.jcell_instance value))

(define (GameInitializationUtil.jnew_0)
  (define this (new GameInitializationUtil% [jclass "GameInitializationUtil"]))
    (set-field! f_EVENT this (GameInitializedEvent.jnew_1 this))
  this)

(define (GameInitializationUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (GameInitializationUtil.jstatic_instance)))))



