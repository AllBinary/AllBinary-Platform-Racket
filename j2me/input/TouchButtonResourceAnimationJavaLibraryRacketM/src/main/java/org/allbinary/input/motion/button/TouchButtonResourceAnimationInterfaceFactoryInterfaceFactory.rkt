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
;; package org.allbinary.input.motion.button

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../org/allbinary/animation/resource/BaseResourceAnimationInterfaceFactoryInterfaceFactory.rkt")
(lazy-require ["../../../../../org/allbinary/animation/AnimationBehaviorFactory.rkt" (AnimationBehaviorFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/animation/NullAnimationFactory.rkt" (NullAnimationFactory.jm_getFactoryInstance_0)])
(lazy-require ["../../../../../org/allbinary/animation/image/sprite/OneRowSpriteIndexedAnimationFactory.rkt" (OneRowSpriteIndexedAnimationFactory.jm_createFactory_2)])
(lazy-require ["../../../../../org/allbinary/game/configuration/feature/Features.rkt" (Features.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/resource/ResourceLoadingLevelFactory.rkt" (ResourceLoadingLevelFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory.rkt" (ProgressCanvasFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/opengles/OpenGLFeatureFactory.rkt" (OpenGLFeatureFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/image/ImageCacheFactory.rkt" (ImageCacheFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/StdUtil.rkt" (StdUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../../org/allbinary/logic/system/os/OperatingSystemFactory.rkt" (OperatingSystemFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/media/image/ImageCompleteUtil.rkt" (ImageCompleteUtil.jm_getInstance_0)])
(lazy-require ["./TouchButtonBlankResource.rkt" (TouchButtonBlankResource.jm_getInstance_0)])
(lazy-require ["./TouchButtonGenericActionResource.rkt" (TouchButtonGenericActionResource.jm_getInstance_0)])
(lazy-require ["./TouchButtonStartResource.rkt" (TouchButtonStartResource.jm_getInstance_0)])
(lazy-require ["./TouchButtonUpResource.rkt" (TouchButtonUpResource.jm_getInstance_0)])
(lazy-require ["./TouchButtonDownResource.rkt" (TouchButtonDownResource.jm_getInstance_0)])
(lazy-require ["./TouchButtonTurnLeftResource.rkt" (TouchButtonTurnLeftResource.jm_getInstance_0)])
(lazy-require ["./TouchButtonTurnRightResource.rkt" (TouchButtonTurnRightResource.jm_getInstance_0)])
(lazy-require ["./TouchButtonStrafeLeftResource.rkt" (TouchButtonStrafeLeftResource.jm_getInstance_0)])
(lazy-require ["./TouchButtonStrafeRightResource.rkt" (TouchButtonStrafeRightResource.jm_getInstance_0)])
(provide (all-defined-out))

(define TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory%
  (class BaseResourceAnimationInterfaceFactoryInterfaceFactory%
    (super-new)
    (define/override (jm_init_1 _level)
    (let ()
      (let/ec jreturn
        (send this jm_initImageCache_2 (ImageCacheFactory.jm_getInstance_0) _level))))
    (define/override (jm_initImageCache_2 _imageCache _level)
    (let ([_portion JR.null][_loadingString JR.null][_index JR.null][_progressCanvas JR.null][_touchButtonBlankResource JR.null][_touchButtonGenericActionResource JR.null][_touchButtonStartResource JR.null][_touchButtonUpResource JR.null][_touchButtonDownResource JR.null][_touchButtonTurnLeftResource JR.null][_touchButtonTurnRightResource JR.null][_touchButtonStrafeLeftResource JR.null][_touchButtonStrafeRightResource JR.null][_touchButtonBlankResourceImage JR.null][_touchButtonGenericActionResourceImage JR.null][_touchButtonStartResourceImage JR.null][_touchButtonUpResourceImage JR.null][_touchButtonDownResourceImage JR.null][_touchButtonTurnLeftResourceImage JR.null][_touchButtonTurnRightResourceImage JR.null][_touchButtonStrafeLeftResourceImage JR.null][_touchButtonStrafeRightResourceImage JR.null][_nullAnimationFactory JR.null][_imageCompleteUtil JR.null][_touchButtonStartHintResource JR.null])
      (let/ec jreturn
        (when (send this jm_isInitialized_0)
            (begin
            (jreturn (void))))
        (set! _portion 140)
        (set! _loadingString (send (send (send (StringMaker.jnew_0) jm_append_1 (send this jm_toString_0)) jm_append_1 " Loading: ") jm_toString_0))
        (set! _index 0)
        (set! _progressCanvas (ProgressCanvasFactory.jm_getInstance_0))
        (send _progressCanvas jm_addPortion_3 _portion _loadingString (let ([jvalue _index]) (set! _index (JR.i32 (+ _index 1))) jvalue))
        (set! _touchButtonBlankResource (TouchButtonBlankResource.jm_getInstance_0))
        (set! _touchButtonGenericActionResource (TouchButtonGenericActionResource.jm_getInstance_0))
        (set! _touchButtonStartResource (TouchButtonStartResource.jm_getInstance_0))
        (set! _touchButtonUpResource (TouchButtonUpResource.jm_getInstance_0))
        (set! _touchButtonDownResource (TouchButtonDownResource.jm_getInstance_0))
        (set! _touchButtonTurnLeftResource (TouchButtonTurnLeftResource.jm_getInstance_0))
        (set! _touchButtonTurnRightResource (TouchButtonTurnRightResource.jm_getInstance_0))
        (set! _touchButtonStrafeLeftResource (TouchButtonStrafeLeftResource.jm_getInstance_0))
        (set! _touchButtonStrafeRightResource (TouchButtonStrafeRightResource.jm_getInstance_0))
        (set! _touchButtonBlankResourceImage (send _imageCache jm_getWithKey_1 (get-field f_RESOURCE _touchButtonBlankResource)))
        (set! _touchButtonGenericActionResourceImage (send _imageCache jm_getWithKey_1 (get-field f_RESOURCE _touchButtonGenericActionResource)))
        (set! _touchButtonStartResourceImage (send _imageCache jm_getWithKey_1 (get-field f_RESOURCE _touchButtonStartResource)))
        (set! _touchButtonUpResourceImage (send _imageCache jm_getWithKey_1 (get-field f_RESOURCE _touchButtonUpResource)))
        (set! _touchButtonDownResourceImage (send _imageCache jm_getWithKey_1 (get-field f_RESOURCE _touchButtonDownResource)))
        (set! _touchButtonTurnLeftResourceImage (send _imageCache jm_getWithKey_1 (get-field f_RESOURCE _touchButtonTurnLeftResource)))
        (set! _touchButtonTurnRightResourceImage (send _imageCache jm_getWithKey_1 (get-field f_RESOURCE _touchButtonTurnRightResource)))
        (set! _touchButtonStrafeLeftResourceImage (send _imageCache jm_getWithKey_1 (get-field f_RESOURCE _touchButtonStrafeLeftResource)))
        (set! _touchButtonStrafeRightResourceImage (send _imageCache jm_getWithKey_1 (get-field f_RESOURCE _touchButtonStrafeRightResource)))
        (set! _nullAnimationFactory (NullAnimationFactory.jm_getFactoryInstance_0))
        (when (JR.className (send (OperatingSystemFactory.jm_getInstance_0) jm_getOperatingSystemInstance_0))
            (begin
            (send _imageCache jm_getWithKey_1 (get-field f_HINT (TouchButtonStartResource.jm_getInstance_0)))))
        (send _progressCanvas jm_addPortion_3 _portion _loadingString (let ([jvalue _index]) (set! _index (JR.i32 (+ _index 1))) jvalue))
        (set! _imageCompleteUtil (ImageCompleteUtil.jm_getInstance_0))
        (send _progressCanvas jm_addPortion_3 _portion _loadingString (let ([jvalue _index]) (set! _index (JR.i32 (+ _index 1))) jvalue))
        (send _imageCompleteUtil jm_waitForImage_2 _touchButtonBlankResourceImage (get-field f_RESOURCE _touchButtonBlankResource))
        (send this jm_add_2 (get-field f_RESOURCE _touchButtonBlankResource) (OneRowSpriteIndexedAnimationFactory.jm_createFactory_2 _touchButtonBlankResourceImage (AnimationBehaviorFactory.jm_getInstance_0)))
        (send this jm_add_2 (get-field f_HINT _touchButtonBlankResource) _nullAnimationFactory)
        (send _progressCanvas jm_addPortion_3 _portion _loadingString (let ([jvalue _index]) (set! _index (JR.i32 (+ _index 1))) jvalue))
        (send _imageCompleteUtil jm_waitForImage_2 _touchButtonGenericActionResourceImage (get-field f_RESOURCE _touchButtonGenericActionResource))
        (send this jm_add_2 (get-field f_RESOURCE _touchButtonGenericActionResource) (OneRowSpriteIndexedAnimationFactory.jm_createFactory_2 _touchButtonGenericActionResourceImage (AnimationBehaviorFactory.jm_getInstance_0)))
        (send this jm_add_2 (get-field f_HINT _touchButtonGenericActionResource) _nullAnimationFactory)
        (send _progressCanvas jm_addPortion_3 _portion _loadingString (let ([jvalue _index]) (set! _index (JR.i32 (+ _index 1))) jvalue))
        (send _imageCompleteUtil jm_waitForImage_2 _touchButtonStartResourceImage (get-field f_RESOURCE _touchButtonStartResource))
        (send this jm_add_2 (get-field f_RESOURCE _touchButtonStartResource) (OneRowSpriteIndexedAnimationFactory.jm_createFactory_2 _touchButtonStartResourceImage (AnimationBehaviorFactory.jm_getInstance_0)))
        (send _progressCanvas jm_addPortion_3 _portion _loadingString (let ([jvalue _index]) (set! _index (JR.i32 (+ _index 1))) jvalue))
        (send _imageCompleteUtil jm_waitForImage_2 _touchButtonUpResourceImage (get-field f_RESOURCE _touchButtonUpResource))
        (send this jm_add_2 (get-field f_RESOURCE _touchButtonUpResource) (OneRowSpriteIndexedAnimationFactory.jm_createFactory_2 _touchButtonUpResourceImage (AnimationBehaviorFactory.jm_getInstance_0)))
        (send this jm_add_2 (get-field f_HINT _touchButtonUpResource) _nullAnimationFactory)
        (send _progressCanvas jm_addPortion_3 _portion _loadingString (let ([jvalue _index]) (set! _index (JR.i32 (+ _index 1))) jvalue))
        (send _imageCompleteUtil jm_waitForImage_2 _touchButtonDownResourceImage (get-field f_RESOURCE _touchButtonDownResource))
        (send this jm_add_2 (get-field f_RESOURCE _touchButtonDownResource) (OneRowSpriteIndexedAnimationFactory.jm_createFactory_2 _touchButtonDownResourceImage (AnimationBehaviorFactory.jm_getInstance_0)))
        (send this jm_add_2 (get-field f_HINT _touchButtonDownResource) _nullAnimationFactory)
        (send _progressCanvas jm_addPortion_3 _portion _loadingString (let ([jvalue _index]) (set! _index (JR.i32 (+ _index 1))) jvalue))
        (send _imageCompleteUtil jm_waitForImage_2 _touchButtonTurnLeftResourceImage (get-field f_RESOURCE _touchButtonTurnLeftResource))
        (send this jm_add_2 (get-field f_RESOURCE _touchButtonTurnLeftResource) (OneRowSpriteIndexedAnimationFactory.jm_createFactory_2 _touchButtonTurnLeftResourceImage (AnimationBehaviorFactory.jm_getInstance_0)))
        (send this jm_add_2 (get-field f_HINT _touchButtonTurnLeftResource) _nullAnimationFactory)
        (send _progressCanvas jm_addPortion_3 _portion _loadingString (let ([jvalue _index]) (set! _index (JR.i32 (+ _index 1))) jvalue))
        (send _imageCompleteUtil jm_waitForImage_2 _touchButtonTurnRightResourceImage (get-field f_RESOURCE _touchButtonTurnRightResource))
        (send this jm_add_2 (get-field f_RESOURCE _touchButtonTurnRightResource) (OneRowSpriteIndexedAnimationFactory.jm_createFactory_2 _touchButtonTurnRightResourceImage (AnimationBehaviorFactory.jm_getInstance_0)))
        (send this jm_add_2 (get-field f_HINT _touchButtonTurnRightResource) _nullAnimationFactory)
        (send _progressCanvas jm_addPortion_3 _portion _loadingString (let ([jvalue _index]) (set! _index (JR.i32 (+ _index 1))) jvalue))
        (send _imageCompleteUtil jm_waitForImage_2 _touchButtonStrafeLeftResourceImage (get-field f_RESOURCE _touchButtonStrafeLeftResource))
        (send this jm_add_2 (get-field f_RESOURCE _touchButtonStrafeLeftResource) (OneRowSpriteIndexedAnimationFactory.jm_createFactory_2 _touchButtonStrafeLeftResourceImage (AnimationBehaviorFactory.jm_getInstance_0)))
        (send this jm_add_2 (get-field f_HINT _touchButtonStrafeLeftResource) _nullAnimationFactory)
        (send _progressCanvas jm_addPortion_3 _portion _loadingString (let ([jvalue _index]) (set! _index (JR.i32 (+ _index 1))) jvalue))
        (send _imageCompleteUtil jm_waitForImage_2 _touchButtonStrafeRightResourceImage (get-field f_RESOURCE _touchButtonStrafeRightResource))
        (send this jm_add_2 (get-field f_RESOURCE _touchButtonStrafeRightResource) (OneRowSpriteIndexedAnimationFactory.jm_createFactory_2 _touchButtonStrafeRightResourceImage (AnimationBehaviorFactory.jm_getInstance_0)))
        (send this jm_add_2 (get-field f_HINT _touchButtonStrafeRightResource) _nullAnimationFactory)
        (if (JR.className (send (OperatingSystemFactory.jm_getInstance_0) jm_getOperatingSystemInstance_0))
            (begin
            (set! _touchButtonStartHintResource (send _imageCache jm_getWithKey_1 (get-field f_HINT (TouchButtonStartResource.jm_getInstance_0))))
            (send this jm_add_2 (get-field f_HINT _touchButtonStartResource) (OneRowSpriteIndexedAnimationFactory.jm_createFactory_2 _touchButtonStartHintResource (AnimationBehaviorFactory.jm_getInstance_0))))
            (begin
            (send this jm_add_2 (get-field f_HINT _touchButtonStartResource) _nullAnimationFactory)))
        (super jm_init_1 _level))))
    (define/override (jm_isLoadingLevel_1 _level)
    (let ([_resourceLoadingLevelFactory JR.null])
      (let/ec jreturn
        (set! _resourceLoadingLevelFactory (ResourceLoadingLevelFactory.jm_getInstance_0))
        (if (= _level (JR.className (get-field f_LOAD_TOUCH _resourceLoadingLevelFactory)))
            (begin
            (jreturn #t))
            (begin
            (jreturn (super jm_isLoadingLevel_1 _level)))))))
    (define/override (jm_isFeature_0)
    (let ()
      (let/ec jreturn
        (if (not (send (Features.jm_getInstance_0) jm_isDefault_1 (get-field f_OPENGL (OpenGLFeatureFactory.jm_getInstance_0))))
            (begin
            (jreturn #t))
            (begin
            (jreturn #f))))))))
(define (TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory.jclassValue) TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory%)

(define (TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory.jnew_1 _name)
  (define this (new TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory% [jclass "TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)

(define (TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory.jm_createFactory_0)
    (let ()
      (let/ec jreturn
        (jreturn (TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory.jnew_1 "TouchButton Animations")))))



