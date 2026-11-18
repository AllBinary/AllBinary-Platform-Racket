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
(lazy-require ["./ImageCache.rkt" (ImageCache.jnew_0)])
(provide (all-defined-out))

(define ImageCacheFactory%
  (class JObject%
    (super-new)))
(define (ImageCacheFactory.jclassValue) ImageCacheFactory%)

(define ImageCacheFactory.jcell_IMAGE_CACHE 'jnone)
(define (ImageCacheFactory.jstatic_IMAGE_CACHE)
  (when (eq? ImageCacheFactory.jcell_IMAGE_CACHE 'jnone) (set! ImageCacheFactory.jcell_IMAGE_CACHE (ImageCache.jnew_0)))
  ImageCacheFactory.jcell_IMAGE_CACHE)
(define (ImageCacheFactory.jsetstatic_IMAGE_CACHE value) (set! ImageCacheFactory.jcell_IMAGE_CACHE value))

(define (ImageCacheFactory.jnew_0)
  (define this (new ImageCacheFactory% [jclass "ImageCacheFactory"]))
  this)

(define (ImageCacheFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (ImageCacheFactory.jstatic_IMAGE_CACHE)))))

(define (ImageCacheFactory.jm_init_0)
    (let ()
      (let/ec jreturn (void))))



