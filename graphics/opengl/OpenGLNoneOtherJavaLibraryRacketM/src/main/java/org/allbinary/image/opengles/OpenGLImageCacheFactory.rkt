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
;; package org.allbinary.image.opengles

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../org/allbinary/image/ImageCache.rkt" (ImageCache.jstatic_NULL_IMAGE_CACHE)])
(provide (all-defined-out))

;OpenGLNoneOtherJavaLibrary
(define OpenGLImageCacheFactory%
  (class JObject%
    (super-new)))
(define (OpenGLImageCacheFactory.jclassValue) OpenGLImageCacheFactory%)

(define OpenGLImageCacheFactory.jcell_IMAGE_CACHE 'jnone)
(define (OpenGLImageCacheFactory.jstatic_IMAGE_CACHE)
  (when (eq? OpenGLImageCacheFactory.jcell_IMAGE_CACHE 'jnone) (set! OpenGLImageCacheFactory.jcell_IMAGE_CACHE (ImageCache.jstatic_NULL_IMAGE_CACHE)))
  OpenGLImageCacheFactory.jcell_IMAGE_CACHE)
(define (OpenGLImageCacheFactory.jsetstatic_IMAGE_CACHE value) (set! OpenGLImageCacheFactory.jcell_IMAGE_CACHE value))

(define (OpenGLImageCacheFactory.jnew_0)
  (define this (new OpenGLImageCacheFactory% [jclass "OpenGLImageCacheFactory"]))
  this)

(define (OpenGLImageCacheFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (OpenGLImageCacheFactory.jstatic_IMAGE_CACHE)))))

(define (OpenGLImageCacheFactory.jm_init_0)
    (let ()
      (let/ec jreturn
        (when (JR.null? (OpenGLImageCacheFactory.jstatic_IMAGE_CACHE))
            (begin
            (void))))))



