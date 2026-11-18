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
  "../../../../org/allbinary/logic/util/cache/BasicArrayListResetablePool.rkt")
(lazy-require ["./ImageArrayRotationAnimationCacheableInterfaceFactory.rkt" (ImageArrayRotationAnimationCacheableInterfaceFactory.jnew_0)])
(provide (all-defined-out))

(define ImageArrayRotationAnimationPool%
  (class BasicArrayListResetablePool%
    (super-new)
    (define/override (jm_remove_1 _key)
    (let ([_cacheableInterface JR.null][_allBinaryImageRotationAnimationInfo JR.null][_imageArrayRotationAnimationCacheable JR.null])
      (let/ec jreturn
        (set! _cacheableInterface (super jm_remove_1 _key))
        (set! _allBinaryImageRotationAnimationInfo _key)
        (set! _imageArrayRotationAnimationCacheable _cacheableInterface)
        (send _imageArrayRotationAnimationCacheable jm_setImageArray_1 (send _allBinaryImageRotationAnimationInfo jm_getImageArray_0))
        (jreturn _cacheableInterface))))))
(define (ImageArrayRotationAnimationPool.jclassValue) ImageArrayRotationAnimationPool%)

(define ImageArrayRotationAnimationPool.jcell_IMAGE_ROTATION_ANIMATION_POOL 'jnone)
(define (ImageArrayRotationAnimationPool.jstatic_IMAGE_ROTATION_ANIMATION_POOL)
  (when (eq? ImageArrayRotationAnimationPool.jcell_IMAGE_ROTATION_ANIMATION_POOL 'jnone) (set! ImageArrayRotationAnimationPool.jcell_IMAGE_ROTATION_ANIMATION_POOL (ImageArrayRotationAnimationPool.jnew_1 (ImageArrayRotationAnimationCacheableInterfaceFactory.jnew_0))))
  ImageArrayRotationAnimationPool.jcell_IMAGE_ROTATION_ANIMATION_POOL)
(define (ImageArrayRotationAnimationPool.jsetstatic_IMAGE_ROTATION_ANIMATION_POOL value) (set! ImageArrayRotationAnimationPool.jcell_IMAGE_ROTATION_ANIMATION_POOL value))

(define (ImageArrayRotationAnimationPool.jnew_1 _cacheableInterfaceFactoryInterface)
  (define this (new ImageArrayRotationAnimationPool% [jclass "ImageArrayRotationAnimationPool"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)

(define (ImageArrayRotationAnimationPool.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (ImageArrayRotationAnimationPool.jstatic_IMAGE_ROTATION_ANIMATION_POOL)))))



