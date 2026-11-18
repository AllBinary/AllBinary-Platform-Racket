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
  "../../../../org/allbinary/logic/util/cache/CacheableInterface.rkt"
  "./AdjustedImageArrayRotationAnimation.rkt")
(lazy-require ["../../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define ImageArrayRotationAnimationCacheable%
  (class AdjustedImageArrayRotationAnimation%
    (super-new)
    (define/public (jm_getKey_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0))))))
    (define/override (jm_toString_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0))))))))
(define (ImageArrayRotationAnimationCacheable.jclassValue) ImageArrayRotationAnimationCacheable%)

(define (ImageArrayRotationAnimationCacheable.jnew_2 _anyType _animationBehavior)
  (define this (new ImageArrayRotationAnimationCacheable% [jclass "ImageArrayRotationAnimationCacheable"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)



