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
;; package org.allbinary.animation.image

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/logic/util/cache/CacheableInterfaceFactoryInterface.rkt")
(lazy-require ["../../../../org/allbinary/animation/AnimationBehavior.rkt" (AnimationBehavior.jm_getInstance_0)])
(lazy-require ["./ImageArrayRotationAnimationCacheable.rkt" (ImageArrayRotationAnimationCacheable.jnew_2)])
(provide (all-defined-out))

(define ImageArrayRotationAnimationCacheableInterfaceFactory%
  (class JObject%
    (super-new)
    (define/public (jm_getInstance_1 _key)
    (let ()
      (let/ec jreturn
        (jreturn (ImageArrayRotationAnimationCacheable.jnew_2 _key (AnimationBehavior.jm_getInstance_0))))))))
(define (ImageArrayRotationAnimationCacheableInterfaceFactory.jclassValue) ImageArrayRotationAnimationCacheableInterfaceFactory%)

(define (ImageArrayRotationAnimationCacheableInterfaceFactory.jnew_0)
  (define this (new ImageArrayRotationAnimationCacheableInterfaceFactory% [jclass "ImageArrayRotationAnimationCacheableInterfaceFactory"]))
  this)



