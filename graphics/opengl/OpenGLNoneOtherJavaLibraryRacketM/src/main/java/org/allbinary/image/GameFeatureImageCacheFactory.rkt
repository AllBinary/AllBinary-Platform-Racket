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
;; package org.allbinary.image

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(lazy-require ["./ImageCacheFactory.rkt" (ImageCacheFactory.jm_init_0 ImageCacheFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define GameFeatureImageCacheFactory%
  (class JObject%
    (super-new)))
(define (GameFeatureImageCacheFactory.jclassValue) GameFeatureImageCacheFactory%)

(define (GameFeatureImageCacheFactory.jnew_0)
  (define this (new GameFeatureImageCacheFactory% [jclass "GameFeatureImageCacheFactory"]))
  this)

(define (GameFeatureImageCacheFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (ImageCacheFactory.jm_getInstance_0)))))

(define (GameFeatureImageCacheFactory.jm_init_0)
    (let ()
      (let/ec jreturn
        (ImageCacheFactory.jm_init_0))))

(define (GameFeatureImageCacheFactory.jm_releaseAll_0)
    (let ()
      (let/ec jreturn
        (send (ImageCacheFactory.jm_getInstance_0) jm_releaseAll_0))))



