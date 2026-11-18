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
(lazy-require ["../../../../../org/allbinary/game/configuration/feature/Features.rkt" (Features.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/resource/ResourceLoadingLevelFactory.rkt" (ResourceLoadingLevelFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/opengles/OpenGLFeatureFactory.rkt" (OpenGLFeatureFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/image/ImageCacheFactory.rkt" (ImageCacheFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/StdUtil.rkt" (StdUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory%
  (class BaseResourceAnimationInterfaceFactoryInterfaceFactory%
    (super-new)
    (define/override (jm_init_1 _level)
    (let ()
      (let/ec jreturn
        (send this jm_initImageCache_2 (ImageCacheFactory.jm_getInstance_0) _level))))
    (define/override (jm_initImageCache_2 _imageCache _level)
    (let ()
      (let/ec jreturn
        (when (send this jm_isInitialized_0)
            (begin
            (jreturn (void))))
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



