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
;; package org.allbinary.game.layer.resources

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/game/configuration/feature/Features.rkt" (Features.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/configuration/feature/MainFeatureFactory.rkt" (MainFeatureFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/resource/ResourceLoadingLevelFactory.rkt" (ResourceLoadingLevelFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/communication/log/PreLogUtil.rkt" (PreLogUtil.jm_put_3)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["./OnDemandResources.rkt" (OnDemandResources.jstatic_NULL_ON_DEMAND_RESOURCES)])
(provide (all-defined-out))

(define OnDemandLoader%
  (class JObject%
    (super-new)
    (field [f_onDemandResourcesFactory JR.null])
    (field [f_gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory JR.null])
    (field [f_resourceAnimationInterfaceFactoryInterfaceFactory JR.null])
    (define/public (jm_init_3 _imageCache _level _loadingString)
    (let ([_resourceLoadingLevelFactory JR.null][_layerPlacementInterfaceBasicArrayListFactoryInterface JR.null])
      (let/ec jreturn
        (set! _resourceLoadingLevelFactory (ResourceLoadingLevelFactory.jm_getInstance_0))
        (if (send (Features.jm_getInstance_0) jm_isFeature_1 (get-field f_LOAD_ALL (MainFeatureFactory.jm_getInstance_0)))
            (begin
            (when (send (get-field f_resourceAnimationInterfaceFactoryInterfaceFactory this) jm_isInitialized_0)
                (begin
                (jreturn (void))))
            (send this jm_initAll_2 _imageCache _loadingString))
            (when (not (= _level (JR.className (get-field f_LOAD_ALL _resourceLoadingLevelFactory))))
            (begin
            (set! _layerPlacementInterfaceBasicArrayListFactoryInterface (send (get-field f_gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory this) jm_getInstance_1 _level))
            (send this jm_initLevel_4 _layerPlacementInterfaceBasicArrayListFactoryInterface _imageCache _level _loadingString)))))))
    (define/public (jm_initAll_2 _imageCache _loadingString)
    (let ([_index JR.null][_portion JR.null][_onDemandResources JR.null][_onDemandIndex JR.null])
      (let/ec jreturn
        (set! _index 0)
        (set! _portion 120)
        (set! _onDemandResources JR.null)
        (begin
            (set! _onDemandIndex (send (get-field f_onDemandResourcesFactory this) jm_size_0))
            (let/ec jbreak (let jloop () (when (>= (let ([jvalue (JR.i32 (- _onDemandIndex 1))]) (set! _onDemandIndex jvalue) jvalue) 0)
                (let/ec jcontinue
            (set! _onDemandResources (send (get-field f_onDemandResourcesFactory this) jm_remove_1 _onDemandIndex))
            (when (not (eq? _onDemandResources (OnDemandResources.jstatic_NULL_ON_DEMAND_RESOURCES)))
                (begin
                (set! _index (send _onDemandResources jm_initAt_5 _imageCache (get-field f_resourceAnimationInterfaceFactoryInterfaceFactory this) _portion _loadingString _index))))) (jloop))))))))
    (define/public (jm_initLevel_4 _layerPlacementInterfaceBasicArrayListFactoryInterface _imageCache _level _loadingString)
    (let ([_commonStrings JR.null][_portion JR.null][_index JR.null][_onDemandArray JR.null][_onDemandResources JR.null][_onDemandIndex JR.null])
      (let/ec jreturn
        (set! _commonStrings (CommonStrings.jm_getInstance_0))
        (set! _portion 120)
        (set! _index 0)
        (set! _onDemandArray (send _layerPlacementInterfaceBasicArrayListFactoryInterface jm_getOnDemandResources_0))
        (PreLogUtil.jm_put_3 (send (send (send (StringMaker.jnew_0) jm_append_1 (get-field f_START _commonStrings)) jm_appendint_1 (vector-length _onDemandArray)) jm_toString_0) this "initLevel")
        (set! _onDemandResources JR.null)
        (begin
            (set! _onDemandIndex (vector-length _onDemandArray))
            (let/ec jbreak (let jloop () (when (>= (let ([jvalue (JR.i32 (- _onDemandIndex 1))]) (set! _onDemandIndex jvalue) jvalue) 0)
                (let/ec jcontinue
            (set! _onDemandResources (send (get-field f_onDemandResourcesFactory this) jm_remove_1 (vector-ref _onDemandArray _onDemandIndex)))
            (when (not (eq? _onDemandResources (OnDemandResources.jstatic_NULL_ON_DEMAND_RESOURCES)))
                (begin
                (set! _index (send _onDemandResources jm_initAt_5 _imageCache (get-field f_resourceAnimationInterfaceFactoryInterfaceFactory this) _portion _loadingString _index))))) (jloop))))))))))
(define (OnDemandLoader.jclassValue) OnDemandLoader%)

(define (OnDemandLoader.jnew_3 _onDemandResourcesFactory _gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory _resourceAnimationInterfaceFactoryInterfaceFactory)
  (define this (new OnDemandLoader% [jclass "OnDemandLoader"]))
    
    
    
    (let ()
      (let/ec jreturn
        (set-field! f_onDemandResourcesFactory this _onDemandResourcesFactory)
        (set-field! f_gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory this _gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory)
        (set-field! f_resourceAnimationInterfaceFactoryInterfaceFactory this _resourceAnimationInterfaceFactoryInterfaceFactory)))
  this)



