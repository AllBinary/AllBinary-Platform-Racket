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
  "./TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory.rkt")
(lazy-require ["../../../../../org/allbinary/game/configuration/feature/Features.rkt" (Features.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/opengles/OpenGLFeatureFactory.rkt" (OpenGLFeatureFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/image/opengles/OpenGLImageCacheFactory.rkt" (OpenGLImageCacheFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory%
  (class TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory%
    (super-new)
    (inherit/super jm_initImageCache_2)
    (define/override (jm_init_1 _level)
    (let ()
      (let/ec jreturn
        (super jm_initImageCache_2 (OpenGLImageCacheFactory.jm_getInstance_0) _level))))
    (define/override (jm_isFeature_0)
    (let ()
      (let/ec jreturn
        (if (send (Features.jm_getInstance_0) jm_isDefault_1 (get-field f_OPENGL (OpenGLFeatureFactory.jm_getInstance_0)))
            (begin
            (jreturn #t))
            (begin
            (jreturn #f))))))))
(define (TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory.jclassValue) TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory%)

(define (TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory.jnew_0)
  (define this (new TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory% [jclass "TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)



